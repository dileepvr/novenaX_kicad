#include "Keyboard.h"
#include "Mouse.h"
#include <avr/power.h>
#include <avr/sleep.h>
#include <ps2.h>
#define PS2_DATA 11
#define PS2_CLK 18

#include "keymaps.h"

byte mstat1;
byte mstat2;
byte mxy;
byte mx;                  
byte my;      
byte mz;               
int msval[2], msval_old[2];
int repeatCnt, mflag;

PS2 moose(PS2_CLK, PS2_DATA); 

volatile bool poll = true; // For interrupt-based waking using Timer1

bool kbrd[9][21];
bool keychange[9][21];

bool backlight = false;

const int mouse_speed = 40;

// row pins { PC6, PC7, PD0, PD1, PD2, PD3, PD4, PD6, PD7 }
const int row_pins[] = {5, 13, 3, 2, 0, 1, 4, 12, 6};
// MUX read pins { PB4, PB5, PB6 }
const int com_pins[] = {8, 9, 10};
// { PF0, PF1, PF4 }
const int addr_pins[] = {A5, A4, A3};
// keyboard backlight control (active high) - PE6
const int bklight_cnt = 7;
// trackpoint analog signals - PF5; PF6
const int trac_vert = A2; const int trac_hori = A1;

void ms_read()
{
  moose.write(0xeb);
  moose.read();
  mstat1 = moose.read();
  mxy = moose.read();
  mz = moose.read();
  mstat2 = moose.read();
  mx = moose.read();
  my = moose.read();
  msval[0] = (((mstat2 & 0x10) << 8) | ((mxy & 0x0F) << 8) | mx );
  msval[1] = (((mstat2 & 0x20) << 7) | ((mxy & 0xF0) << 4) | my );
  msval[2] = int(mz);
}

// Interrupt service routine gets executed on wake-up
//ISR(TIMER1_OVF_vect) {
ISR(TIMER1_COMPA_vect) {

  if (!poll) {
    poll = true; //!poll;
  }

}


// Goodnight Cinderella
void enterSleep(void) {

  set_sleep_mode(SLEEP_MODE_IDLE);

  sleep_enable();

  sleep_mode();

  sleep_disable();

}

void setup() {

  int i, j;

  for (i = 0; i < 9; i++) {
    pinMode(row_pins[i], OUTPUT); digitalWrite(row_pins[i], LOW);
    for (j = 0; j < 21; j++) {
      kbrd[i][j] = false;
      keychange[i][j] = false;
    }
  }

  for (i = 0; i < 3; i++) {
    pinMode(com_pins[i], INPUT); digitalWrite(com_pins[i], LOW);
    pinMode(addr_pins[i], OUTPUT);
  }

  pinMode(bklight_cnt, OUTPUT);

  digitalWrite(bklight_cnt, HIGH); delay(250); digitalWrite(bklight_cnt, LOW); delay(250);
  digitalWrite(bklight_cnt, HIGH); delay(250); digitalWrite(bklight_cnt, LOW);

  moose.write(0xff); moose.read(); moose.read(); moose.read(); 
  moose.write(0xf0); moose.read(); 
  delayMicroseconds(100);
  moose.write(0xe8); moose.read(); 
  moose.write(0x03); moose.read(); 
  moose.write(0xe8); moose.read(); 
  moose.write(0x00); moose.read();  
  moose.write(0xe8); moose.read();  
  moose.write(0x01); moose.read(); 
  moose.write(0xe8); moose.read(); 
  moose.write(0x00); moose.read(); 
  moose.write(0xf3); moose.read(); 
  moose.write(0x14); moose.read(); 

  // Configure the timer.
  cli(); // disable global interrupts
  // Normal timer operation.
  TCCR1A = 0x00;

  // Clear the timer counter register.
  TCNT1 = 0x0000;

  // Configure the prescaler for 1:2, giving us a
  // timeout of 8 milliseconds.
  TCCR1B = 0x02;

  // Set compare register to half of 65536
  // so we get interrupt every 4 milliseconds
  OCR1A = 32768;

  // Enable the timer overlow interrupt.
  //  TIMSK1 = 0x01;

  // Enable CTC mode
  TCCR1B |= (1 << WGM12);  
  TIMSK1 |= (1 << OCIE1A);

  // power down unused parts of the chip
  power_timer0_disable();
  power_timer2_disable();
  power_twi_disable();

  Keyboard.begin();
  Mouse.begin();
  sei(); // enable global interrupts

}

void loop() {

  if (poll) { // Check if interrupt has tripped
    poll = false; // !poll;

    // Handle keyboard
    if (read_kbrd()) {
      if ((kbrd[3][1]) || (keychange[5][19] && kbrd[5][19]) || (keychange[3][19] && kbrd[3][19]) || (keychange[2][19] && kbrd[2][19])) {
        // Fn-key depressed or LOCK-1 or LOCK-2 or LOCK-3
        special_tasks();
      } else {
        transmit_keys();
      }
    }

    // Handle trackpad
    power_timer0_enable(); // PS/2 library uses delayMicroseconds() function, uses timer0
    ms_read();
    if (msval[0] > 0 and msval[2] > 10)
      { repeatCnt++; }
    else
    { repeatCnt = 0; mflag = 0; }
    if (repeatCnt > 2)
      {
        if (mflag == 1) {
          Mouse.move((msval[0]-msval_old[0])/5,(msval_old[1]-msval[1])/5);      
        } else if (mflag == 2) {
          Mouse.move(0,0,(msval[1]-msval_old[1])/20);
          mflag++;
        } else if (mflag > 2 && mflag < 5) { // Slowing the scroll rate down
          mflag++;
        } else if (mflag == 5) {
        mflag = 2;
      }
    
    if (mflag == 0) {
      if( msval[0] > 5500 ) { mflag = 2; } // Scroll mode
      else { mflag = 1; } // mouse move mode
    }
    msval_old[0] = msval[0]; msval_old[1] = msval[1];  
  }
  power_timer0_disable();
    
    //handle_trackpoint(); // my trackpoint didn't seem to work
    enterSleep();
  }

}


void handle_trackpoint() {

  Mouse.move(map(analogRead(trac_hori),0,1023,(-1)*mouse_speed,mouse_speed), map(analogRead(trac_vert),0,1023,(-1)*mouse_speed,mouse_speed));

}

bool read_kbrd() {

  bool event = false;

  PORTC |= (1 << PC6); event |= scan_row(0); PORTC &= ~(1 << PC6);
  PORTC |= (1 << PC7); event |= scan_row(1); PORTC &= ~(1 << PC7);
  PORTD |= (1 << PD0); event |= scan_row(2); PORTD &= ~(1 << PD0);
  PORTD |= (1 << PD1); event |= scan_row(3); PORTD &= ~(1 << PD1);
  PORTD |= (1 << PD2); event |= scan_row(4); PORTD &= ~(1 << PD2);
  PORTD |= (1 << PD3); event |= scan_row(5); PORTD &= ~(1 << PD3);
  PORTD |= (1 << PD4); event |= scan_row(6); PORTD &= ~(1 << PD4);
  PORTD |= (1 << PD6); event |= scan_row(7); PORTD &= ~(1 << PD6);
  PORTD |= (1 << PD7); event |= scan_row(8); PORTD &= ~(1 << PD7);

  return event;

}

bool scan_row(int ii) {

  bool haschanged = false;

  PORTF &= ~(1 << PF4); PORTF &= ~(1 << PF1); PORTF &= ~(1 << PF0); // Address 0b000

  if (PINB & (1 << PB4)) {
    if (!kbrd[ii][0]) {
      kbrd[ii][0] = true;
      keychange[ii][0] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][0]) {
      kbrd[ii][0] = false;
      keychange[ii][0] = true;
      haschanged = true;
    }
  }
  if (PINB & (1 << PB5)) {
    if (!kbrd[ii][8]) {
      kbrd[ii][8] = true;
      keychange[ii][8] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][8]) {
      kbrd[ii][8] = false;
      keychange[ii][8] = true;
      haschanged = true;
    }
  }
  if (PINB & (1 << PB6)) {
    if (!kbrd[ii][16]) {
      kbrd[ii][16] = true;
      keychange[ii][16] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][16]) {
      kbrd[ii][16] = false;
      keychange[ii][16] = true;
      haschanged = true;
    }
  }

  PORTF |= (1 << PF0); // Address 0b001

  if (PINB & (1 << PB4)) {
    if (!kbrd[ii][1]) {
      kbrd[ii][1] = true;
      keychange[ii][1] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][1]) {
      kbrd[ii][1] = false;
      keychange[ii][1] = true;
      haschanged = true;
    }
  }
  if (PINB & (1 << PB5)) {
    if (!kbrd[ii][9]) {
      kbrd[ii][9] = true;
      keychange[ii][9] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][9]) {
      kbrd[ii][9] = false;
      keychange[ii][9] = true;
      haschanged = true;
    }
  }
  if (PINB & (1 << PB6)) {
    if (!kbrd[ii][17]) {
      kbrd[ii][17] = true;
      keychange[ii][17] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][17]) {
      kbrd[ii][17] = false;
      keychange[ii][17] = true;
      haschanged = true;
    }
  }

  PORTF |= (1 << PF1); PORTF &= ~(1 << PF0); // Address 0b010

  if (PINB & (1 << PB4)) {
    if (!kbrd[ii][2]) {
      kbrd[ii][2] = true;
      keychange[ii][2] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][2]) {
      kbrd[ii][2] = false;
      keychange[ii][2] = true;
      haschanged = true;
    }
  }
  if (PINB & (1 << PB5)) {
    if (!kbrd[ii][10]) {
      kbrd[ii][10] = true;
      keychange[ii][10] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][10]) {
      kbrd[ii][10] = false;
      keychange[ii][10] = true;
      haschanged = true;
    }
  }
  if (PINB & (1 << PB6)) {
    if (!kbrd[ii][18]) {
      kbrd[ii][18] = true;
      keychange[ii][18] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][18]) {
      kbrd[ii][18] = false;
      keychange[ii][18] = true;
      haschanged = true;
    }
  }

  PORTF |= (1 << PF0); // Address 0b011

  if (PINB & (1 << PB4)) {
    if (!kbrd[ii][3]) {
      kbrd[ii][3] = true;
      keychange[ii][3] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][3]) {
      kbrd[ii][3] = false;
      keychange[ii][3] = true;
      haschanged = true;
    }
  }
  if (PINB & (1 << PB5)) {
    if (!kbrd[ii][11]) {
      kbrd[ii][11] = true;
      keychange[ii][11] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][11]) {
      kbrd[ii][11] = false;
      keychange[ii][11] = true;
      haschanged = true;
    }
  }
  if (PINB & (1 << PB6)) {
    if (!kbrd[ii][19]) {
      kbrd[ii][19] = true;
      keychange[ii][19] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][19]) {
      kbrd[ii][19] = false;
      keychange[ii][19] = true;
      haschanged = true;
    }
  }

  PORTF |= (1 << PF4); PORTF &= ~(1 << PF1); PORTF &= ~(1 << PF0); // Address 0b100

  if (PINB & (1 << PB4)) {
    if (!kbrd[ii][4]) {
      kbrd[ii][4] = true;
      keychange[ii][4] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][4]) {
      kbrd[ii][4] = false;
      keychange[ii][4] = true;
      haschanged = true;
    }
  }
  if (PINB & (1 << PB5)) {
    if (!kbrd[ii][12]) {
      kbrd[ii][12] = true;
      keychange[ii][12] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][12]) {
      kbrd[ii][12] = false;
      keychange[ii][12] = true;
      haschanged = true;
    }
  }
  if (PINB & (1 << PB6)) {
    if (!kbrd[ii][20]) {
      kbrd[ii][20] = true;
      keychange[ii][20] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][20]) {
      kbrd[ii][20] = false;
      keychange[ii][20] = true;
      haschanged = true;
    }
  }

  PORTF |= (1 << PF0); // Address 0b101

  if (PINB & (1 << PB4)) {
    if (!kbrd[ii][5]) {
      kbrd[ii][5] = true;
      keychange[ii][5] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][5]) {
      kbrd[ii][5] = false;
      keychange[ii][5] = true;
      haschanged = true;
    }
  }
  if (PINB & (1 << PB5)) {
    if (!kbrd[ii][13]) {
      kbrd[ii][13] = true;
      keychange[ii][13] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][13]) {
      kbrd[ii][13] = false;
      keychange[ii][13] = true;
      haschanged = true;
    }
  }

  PORTF |= (1 << PF1); PORTF &= ~(1 << PF0); // Address 0b110

  if (PINB & (1 << PB4)) {
    if (!kbrd[ii][6]) {
      kbrd[ii][6] = true;
      keychange[ii][6] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][6]) {
      kbrd[ii][6] = false;
      keychange[ii][6] = true;
      haschanged = true;
    }
  }
  if (PINB & (1 << PB5)) {
    if (!kbrd[ii][14]) {
      kbrd[ii][14] = true;
      keychange[ii][14] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][14]) {
      kbrd[ii][14] = false;
      keychange[ii][14] = true;
      haschanged = true;
    }
  }

  PORTF |= (1 << PF0); // Address 0b111

  if (PINB & (1 << PB4)) {
    if (!kbrd[ii][7]) {
      kbrd[ii][7] = true;
      keychange[ii][7] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][7]) {
      kbrd[ii][7] = false;
      keychange[ii][7] = true;
      haschanged = true;
    }
  }
  if (PINB & (1 << PB5)) {
    if (!kbrd[ii][15]) {
      kbrd[ii][15] = true;
      keychange[ii][15] = true;
      haschanged = true;
    }
  }
  else {
    if (kbrd[ii][15]) {
      kbrd[ii][15] = false;
      keychange[ii][15] = true;
      haschanged = true;
    }
  }

  return haschanged;

}


void special_tasks() {

  if (kbrd[3][1]) { // Fn-key pressed

    if (keychange[1][18] && kbrd[1][18]) { // right-arrow
      backlight = !backlight;
      if (backlight) {
        PORTE |= (1 << PE6);  // turn keyboard backlight on
      }
      else {
        PORTE &= ~(1 << PE6);  // turn keyboard backlight off
      }
    }

    if (keychange[1][16]) {
      if (kbrd[1][16]) {
        Keyboard.press(KEY_MUTE);  // left-arrow
      } else {
        Keyboard.release(KEY_MUTE);
      } keychange[1][16] = false;
    }
    if (keychange[1][17]) {
      if (kbrd[1][17]) {
        Keyboard.press(KEY_VOLUME_DOWN);  // down-arrow
      } else {
        Keyboard.release(KEY_VOLUME_DOWN);
      } keychange[1][17] = false;
    }
    if (keychange[8][16]) {
      if (kbrd[8][16]) {
        Keyboard.press(KEY_VOLUME_UP);  // up-arrow
      } else {
        Keyboard.release(KEY_VOLUME_UP);
      } keychange[8][16] = false;
    }
    if (keychange[5][10]) {
      if (kbrd[5][10]) {
        Keyboard.press(KEY_SYSRQ);  // F10
      } else {
        Keyboard.release(KEY_SYSRQ);
      } keychange[5][10] = false;
    }
    if (keychange[5][17]) {
      if (kbrd[5][17]) {
        Keyboard.press(KEY_PRTSC);  // F11
      } else {
        Keyboard.release(KEY_PRTSC);
      } keychange[5][17] = false;
    }
    if (keychange[5][18]) {
      if (kbrd[5][18]) {
        Keyboard.press(KEY_PAUSE);  // F12
      } else {
        Keyboard.release(KEY_PAUSE);
      } keychange[5][18] = false;
    }
    

// Had to keep the following commented out, as it interfered with the trackpad function
/*    if (keychange[2][11]) {
      if (kbrd[2][11]) {
        Keyboard.press('0');  // m        
      } else {
        Keyboard.release('0');
      } keychange[2][11] = false;
    }
    if (keychange[2][14]) {    
      if (kbrd[2][14]) {
        Keyboard.press('.');  // .
      } else {
        Keyboard.release('.');
      } keychange[2][14] = false;
    }
    if (keychange[1][13]) {
      if (kbrd[1][13]) {
        Keyboard.press('+');  // /
      } else {
        Keyboard.release('+');
      } keychange[1][13] = false;
    }
    if (keychange[3][11]) {
      if (kbrd[3][11]) {
        Keyboard.press('1');  // j
      } else {
        Keyboard.release('1');
      } keychange[3][11] = false;
    }
    if (keychange[3][12]) {
      if (kbrd[3][12]) {
        Keyboard.press('2');  // k
      } else {
        Keyboard.release('2');
      } keychange[3][12] = false;
    }
    if (keychange[3][14]) {
      if (kbrd[3][14]) {
        Keyboard.press('3');  // l
      } else {
        Keyboard.release('3');
      } keychange[3][14] = false;
    }
    if (keychange[3][13]) {
      if (kbrd[3][13]) {
        Keyboard.press('-');  // ;
      } else {
        Keyboard.release('-');
      } keychange[3][13] = false;
    }
    if (keychange[4][11]) {
      if (kbrd[4][11]) {
        Keyboard.press('4');  // u
      } else {
        Keyboard.release('4');
      } keychange[4][11] = false;
    }
    if (keychange[4][12]) {
      if (kbrd[4][12]) {
        Keyboard.press('5');  // i
      } else {
        Keyboard.release('5');
      } keychange[4][12] = false;
    }
    if (keychange[4][14]) {
      if (kbrd[4][14]) {
        Keyboard.press('6');  // o
      } else {
        Keyboard.release('6');
      } keychange[4][14] = false;
    }
    if (keychange[4][13]) {
      if (kbrd[4][13]) {
        Keyboard.press('*');  // p
      } else {
        Keyboard.release('*');
      } keychange[4][13] = false;
    }
    if (keychange[5][11]) {
      if (kbrd[5][11]) {
        Keyboard.press('7');  // 7
      } else {
        Keyboard.release('7');
      } keychange[5][11] = false;
    }
    if (keychange[5][12]) {
      if (kbrd[5][12]) {
        Keyboard.press('8');  // 8
      } else {
        Keyboard.release('8');
      } keychange[5][12] = false;
    }
    if (keychange[5][14]) {
      if (kbrd[5][14]) {
        Keyboard.press('9');  // 9
      } else {
        Keyboard.release('9');
      } keychange[5][14] = false;
    }
    if (keychange[5][13]) {
      if (kbrd[5][13]) {
        Keyboard.press('/');  // 0
      } else {
        Keyboard.release('/');
      } keychange[5][13] = false;
    }
*/    
  }

}


void transmit_keys() {

  int i, j;

  if (keychange[0][0]) {
    if (kbrd[0][0]) {
      Mouse.press(MOUSE_LEFT);
    } else {
      Mouse.release(MOUSE_LEFT);
    } keychange[0][0] = false;
  }
  if (keychange[0][15]) {
    if (kbrd[0][15]) {
      Mouse.press(MOUSE_MIDDLE);
    } else {
      Mouse.release(MOUSE_MIDDLE);
    } keychange[0][15] = false;
  }
  if (keychange[0][20]) {
    if (kbrd[0][20]) {
      Mouse.press(MOUSE_RIGHT);
    } else {
      Mouse.release(MOUSE_RIGHT);
    } keychange[0][20] = false;
  }

  for (i = 1; i < 9; i++) {
    for (j = 0; j < 21; j++) {
      if ((qwerty[i][j] != NULL) && keychange[i][j]) {
        keychange[i][j] = false;
        if (kbrd[i][j]) {
          Keyboard.press(qwerty[i][j]);
        } else {
          Keyboard.release(qwerty[i][j]);
        }
      }
    }
  }

}

