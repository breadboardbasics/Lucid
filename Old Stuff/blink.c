#define F_CPU 16000000
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <avr/sleep.h>

#define output_low(port,pin) port &= ~(1<<pin)
#define output_high(port,pin) port |= (1<<pin)
#define set_input(portdir,pin) portdir &= ~(1<<pin)
#define set_output(portdir,pin) portdir |= (1<<pin)

volatile int flag = 0;

ISR(INT0_vect){
	flag = 0;
	}

int main(){
	DDRD &= ~(1 << DDD2);     // Clear the PD2 pin
    // PD2 (PCINT0 pin) is now an input

    PORTD |= (1 << PORTD2);    // turn On the Pull-up
    // PD2 is now an input with pull-up enabled
	
	DDRB |= 0xFF;
	PORTB = 0x00; //Set B0 high
	EIMSK |= (1 << INT0);     // Turns on INT0
	EICRA = 2; //Set int0 interrupt to trigger on falling edge
	sei();
	
	sleep_enable();
    set_sleep_mode(SLEEP_MODE_STANDBY);
    sleep_mode();  //go to sleep
    sleep_disable();
	
	while(1){
		if(!flag){
			_delay_ms(100);
			PORTB = 0x00;
			_delay_ms(100);
			PORTB = 0x01;
			}
		else{
			PORTB = 0x00;
			}
			
	}
	
return(0);
}