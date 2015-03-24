#define F_CPU 16000000
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

#define output_low(port,pin) port &= ~(1<<pin)
#define output_high(port,pin) port |= (1<<pin)
#define set_input(portdir,pin) portdir &= ~(1<<pin)
#define set_output(portdir,pin) portdir |= (1<<pin)
#define AlarmEnable 0x7F

uint8_t buffRX[8];
uint8_t spiErrors;

void readTime();
void writeTime(int secs, int mins, int hours);
void setAlarm(int mins, int hours);
void clearAlarm();
void twiRX(const uint8_t targetAddress, uint8_t numBytes);
void twiTX(uint8_t twiData);
void txStart();
void txStop();
void twintWait();
void enableClocks();
uint8_t decToBcd(int val);

volatile int seconds,mins,hours;
volatile int flag = 0;

int hour = //varHour
int min = //varMin
int current = //varCurrent
int pdurr = //varPdurr
int npdurr = //varNpdurr

ISR(INT0_vect){
	flag = 1;
	clearAlarm();
	}

int main(){
  set_output(DDRB,1); //Set led pin as output
  set_input(DDRD,2); //Set D2 as an input (for interrupt)
  enableClocks();
  
  clearAlarm();
  writeTime(55,1,1);
  setAlarm(2,1);
  
  output_low(PORTB,1);//Turn led off
  
  EIMSK |= (1 << INT0); //Turns on INT0
  EICRA = 2; //Set int0 interrupt to trigger on falling edge
  sei(); //Enable interrupts
  while(1){
    if(flag){
	output_high(PORTB,1);//Turn led on
	_delay_ms(5000);
	output_low(PORTB,1);//Turn led off
	flag = 0;
	}
	else{
	  output_low(PORTB,1);//Turn led off
	  }
  }
  return(0);
}

void writeTime(int secs, int mins, int hours){
  txStart();
  twiTX(0xA2);// Send device write address
  twiTX(0x02);// Set register pointer to seconds
  twiTX(decToBcd(secs));//set seconds
  twiTX(decToBcd(mins));//set mins
  twiTX(decToBcd(hours));//set hours
  twiTX(0x01);//Set days to 1
  twiTX(0x00);//Set weekdays to 0
  twiTX(0x01);//Set Century_months to 1
  twiTX(0x00);//Set years to 0
  txStop();
  }
  
void readTime(){
  txStart();
  twiTX(0xA2);// Send device write adress
  twiTX(0x02);// Send start adress of seconds
  txStop();
  txStart();
  twiRX(0xA3,3);//Read seconds mins hours
  txStop();
  
  seconds = (((buffRX[0] & 0x70)>>4) * 10) + (buffRX[0] & 0x0F);
  mins = (((buffRX[1] & 0x70)>>4) * 10) + (buffRX[1] & 0x0F);
  hours = (((buffRX[2] & 0x30)>>4) * 10) + (buffRX[2] & 0x0F);
  }

void setAlarm(int mins, int hours){
  txStart();
  twiTX(0xA2);// Send device write address
  twiTX(0x09);// Send start address of Minute_alarm
  twiTX(AlarmEnable & decToBcd(mins));
  twiTX(AlarmEnable & decToBcd(hours));
  txStop();
  txStart();
  twiTX(0xA2);// Send device write address
  twiTX(0x01);// Send address of Control Register 2
  twiTX(0x02);// Enable Alarm Interrupt 
  txStop();
  }
  
void clearAlarm(){
  twiTX(0xA2);// Send device write address
  twiTX(0x01);// Send address of Control Register 2
  twiTX(0x00);// Disable Alarm and clear alarm flag
  txStop();  
  }
  
void twiRX(const uint8_t targetAddress, uint8_t numBytes){
  if(0 == numBytes){
    return;
  } //Should never want to read one byte
  else if(numBytes > 8)
  {
    numBytes = 8;
  }
  TWDR =  targetAddress; //Select address to access for read
  TWCR = (1<<TWINT)|(1<<TWEN); //Send TWDR
  twintWait();
  int i = 0;
  while(i < numBytes){
    if(i < numBytes - 1) //Check if -not- the last byte to be read
    {
      TWCR = (1<<TWINT)|(1<<TWEN)|(1<<TWEA);
    }
    else //When reading our last byte we should return NACK
    {
      TWCR = (1<<TWINT)|(1<<TWEN); //Return NACK because we're finished reading after this
    }
    //Wait for return byte
    twintWait();
    buffRX[i] = TWDR;
	i++;
  }
}

void twiTX(uint8_t twiData)
{
  TWDR = twiData;
  TWCR = (1<<TWINT)|(1<<TWEN); //Send TWDR
  twintWait(); //Wait for TWDR to finish transmitting 
}

void txStart()
{
  TWCR = (1<<TWINT)|(1<<TWSTA)|(1<<TWEN); //Send START
  twintWait();
}

void txStop()
{
  TWCR = (1<<TWINT)|(1<<TWEN)|(1<<TWSTO); //Transmit STOP
  int z = 0;
  while (!(TWCR | (0<<TWSTO))) //Wait for STOP to finish and TWSTO to be cleared
  {
    z++;
    //Assuming 5 clock cycles per loop, count up to 100mS before just returning
    if(z > 320000)	//F_CPU/10/5
    {
      spiErrors++; //Let 
      return; //Just return, this one time read will be wrong but it shouldn't matter much
    }    
  }
}

void twintWait() //Wait for to finish TWI operation
{
  uint16_t z = 0;
  uint16_t j = 0;
  while(!(TWCR & (1<<TWINT)))
  {
    z++;
    //Assuming 8 clock cycles per loop, count up to 100mS before just returning VERY ROUGH GUESS
    if(j > 2)	//F_CPU/10/8 is the target number of increments for z
    {
      spiErrors++; //Let 
      return; //Just return, this one time read will be wrong but it shouldn't matter much
    }
    if(z > 65000) //z and j are used because one 16-bit integer can't fit the appropriate value
    {
      z = 0;
      j++;
    }
  }
}

void enableClocks()
  {
	  //Use non-standard define names to avoid conflicts
	  #define currentCPUfreq 16000000
	  
	  #define desiredSPIclock 100000
	  // initialize twi prescaler to 1 and set bit rate
	  TWSR &= ~(1 << TWPS0); //Clear TWSP0
	  TWSR &= ~(1 << TWPS1); //Clear TWSP1
	  //At 16MHz TWI can be set from 3486Hz to 1MHz without using the prescaler
	  TWBR =  (currentCPUfreq/desiredSPIclock - 16)/2;
	  /* twi bit rate formula from atmega128 manual pg 204
	  SCL Frequency = CPU Clock Frequency / (16 + (2 * TWBR))
	  note: TWBR should be 10 or higher for master mode
	  We don't want to mess with the prescaler if we can avoid it
	  It is 72 for a 16mhz board with 100kHz TWI */
	}
	
uint8_t decToBcd(int val)
{
    return ( (val/10*16) + (val%10) );
}