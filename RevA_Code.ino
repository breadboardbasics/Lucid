//Version 1.0 - Tyler Sisk - 1/2/15
//Use with arduino, place in folder named RevA_Code, also must have the Rtc_Pcf8563 library (look for it on github) 
//Open in arduino and go to file, upload using programmer
//Make sure that your programmer is selected under tools. 

#include <Wire.h>
#include <Rtc_Pcf8563.h>
#include <SPI.h>
#include <avr/sleep.h>

int led = 9;
const int cs = 10;
int ocon = 8;
Rtc_Pcf8563 rtc;
volatile int alarm_flag=0;

void isr(){ //interrupt service routine
  alarm_flag=1;
}

void setup(){
  pinMode(led,OUTPUT);
  pinMode (cs, OUTPUT);
  pinMode (ocon, OUTPUT);
  pinMode(3, INPUT);
  SPI.begin();
  rtc.initClock();
  delay(1000);
  attachInterrupt(0, isr, FALLING);
  
  digitalWrite(cs,HIGH);
  digitalWrite(ocon,LOW);
  digitalWrite(led,LOW);

  //This part is not yet used but will be in the final version
  //const char time[] = __TIME__; //Get current time from PC when compiling
  //int myhour = 10*(time[0] - '0') + (time[1] - '0');
  //int mymin = 10*(time[3] - '0') + (time[4] - '0');
  //int mysec = 10*(time[6] - '0') + (time[7] - '0');
  
  rtc.setTime(23,22,52);

  //////////////////////////////////set time to wake up///////////////////////////////////////////////
  int wakemin = 23;
  int wakehour = 23;
  rtc.setAlarm(wakemin, wakehour, 99, 99); //min,hour,day,weekday, 99 = no alarm value to be set 
  ////////////////////////////////////////////////////////////////////////////////////////////////////
}

void digitalPotWrite(int value)
{
  digitalWrite(cs, LOW);
  SPI.transfer(0x11);
  SPI.transfer(value);
  digitalWrite(cs, HIGH);
}

void clr_alarm()
{
  detachInterrupt(0);
  rtc.clearAlarm();
  delay(1000);
  alarm_flag=0;
  attachInterrupt(0, isr, FALLING);
}

void loop(){

  if(alarm_flag == 0){
    sleep_enable();
    set_sleep_mode(SLEEP_MODE_STANDBY);
    sleep_mode();  //go to sleep
    sleep_disable();
  }

  if(alarm_flag == 1){
    clr_alarm();
    digitalWrite(ocon,HIGH);
    int i = 255;
    digitalWrite(led,HIGH);

    while(i >= 0){  //Ramp Up approximately 10 seconds
      delay(40);
      digitalPotWrite(i);
      i--;
    }

    delay(120000); //Sustain for 2 minutes

    while(i <= 255){  //Ramp Down approximately 10 seconds
      delay(40);
      digitalPotWrite(i);
      i++;
    }
    digitalWrite(led,LOW);
  }
}	
