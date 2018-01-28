#include <Mouse.h>
#include <ps2.h>
#define PS2_DATA 11
#define PS2_CLK 18

byte mstat1;
byte mstat2;
byte mxy;
byte mx;                  
byte my;      
byte mz;               
int msval[2], msval_old[2];
int repeatCnt, mflag;

PS2 moose(PS2_CLK, PS2_DATA);                

void setup() {
  Mouse.begin();
  moose.write(0xff);  
  moose.read();
  moose.read();
  moose.read(); 
  moose.write(0xf0); 
  moose.read(); 
  delayMicroseconds(100);
  moose.write(0xe8);
  moose.read(); 
  moose.write(0x03);
  moose.read(); 
  moose.write(0xe8);
  moose.read(); 
  moose.write(0x00); 
  moose.read();  
  moose.write(0xe8);
  moose.read();  
  moose.write(0x01);
  moose.read(); 
  moose.write(0xe8);
  moose.read(); 
  moose.write(0x00); 
  moose.read(); 
  moose.write(0xf3);
  moose.read(); 
  moose.write(0x14);
  moose.read(); 
  //Serial.begin(115200);
}

void ms_read()
{moose.write(0xeb);
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

void loop() {
  ms_read();
  if (msval[0] > 0 and msval[2] > 10)
  { repeatCnt++; }
  else
  { repeatCnt = 0; mflag = 0; }

//  if (repeatCnt > 2) {
 //   msval_old[0] = map(msval[0], 1072, 5681, -1023, 1023);
  //  msval_old[1] = map(msval[1], 1072, 5681, -1023, 1023); 
  //}
 
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


}
