/*	ME E4058 Fall 2018
	Mechatronics & Embedded Microcomputer Control
	Case Study 5: DC Motors
	Group 16: Robert Kydd (rrk2139), Yuxin Zhao (yz3400 */

#include <xc.h>
#include <pic.h>
#define _XTAL_FREQ 20000000						// Set crystal oscillator frequency

/* Configuration Bits Setup */

	#pragma config FOSC=HS, CP=OFF, DEBUG=OFF, BORV=20, BOREN=0, MCLRE=ON, PWRTE=ON, WDTE=OFF
	#pragma config BORSEN=OFF, IESO=OFF, FCMEN=0

/* Note: The configuration above sets the oscillator to an external high
speed clock, sets the watchdog timer off, sets the power up timer on,
sets the system clear on (which enables the reset pin) and turns code
protect off. */

/************************************************************

CS5_Group16.c

This is the program file for Case Study 5: DC Motors.

	Due to...

	Port Reference:
		PORTA
			pin 0
			pin 1 - Tachometer (Analog Input)
			pin 2 - 
			pin 4 - Black button (Digital Input) - mode changing
			pin 5 - 

		PORTB (for velocity error display)
			pin 0 - LED (Digital Output)
			pin 1 - LED (Digital Output)
			pin 2 - LED (Digital Output)
			pin 3 - LED (Digital Output)
			pin 4 - LED (Digital Output)
			pin 5 - LED (Digital Output)
			pin 6 - LED (Digital Output)
			pin 7 - LED (Digital Output)

		PORTC
			pin 0 - PWM amp
			pin 1 - DC motor brake signal (Digital Output)
			pin 2 - CCP1
			pin 3 - Eddy current sensor (Digital Input)
			pin 4 - Octal switch (Digital Input)
			pin 5 - Octal switch (Digital Input)
			pin 6 - Encoder signal (Digital Input)


************************************************************/

// Variable declarations

#define	PORTBIT(adr,bit)		((unsigned)(&adr)*8+(bit))

	char State;
	int Count, i; 
	int Speed, aSpeed, eCount, vRef,vError;
	int enCount, baseVel;
	int vErrorDiff, vErrorInt;	
	float K_p, K_i, K_d, duty;


// PORTBIT function used to name a port

	static bit		blackButton	@	PORTBIT(PORTA,4);
	static bit		eddySensor	@	PORTBIT(PORTC,3);

	static bit		encoder	@	PORTBIT(PORTC,6);
	static bit		brake	@	PORTBIT(PORTC,1);



// Define functions to be called for operation

void SwitchDelay (void) 						// Delay to let switch debounce
{
	__delay_us(1200); 							// 1200 us delay
}

void flashDelay (void)
{
	__delay_ms(500);
}

void	initPort(void)							// Initialize Ports and Registers
{
	PORTB	= 0B00000000;						// Clear PORTB Output latches
	PORTC   = 0B00000001;						// Clear PORTC Output latches, set direction CW	
	CCPR1L  = 0B00000000;
	TRISA	= 0B00111111;						// Configure PORTA pins to input
	TRISB	= 0B00000000;						// Configure PORTB pins to output
	TRISC	= 0B11111000;						// Configure PORTC pins as input and output
	
	i		= 0;
	State	= 0;
	duty	= 0;
	Speed	= 0;
	aSpeed	= 0;
	Count	= 0;
	eCount  = 0;
	vRef    = 165;
	baseVel = 0;
	vError  = 0;
	vErrorDiff = 0;
	vErrorInt = 0;
	K_p		= 10.0;								// Proportional control gain
	K_i		= 0.5;
	K_d		= 0.125;	
}

void	initAtoD_PWM(void)
{
	
	ADIF	= 0;								// Enable interrupts, Clear ADIF bit
	ADIE	= 1;								// Set ADIE bit
	PEIE	= 1;								// Set PEIE bit 
	GIE		= 1;								// Set GIE bit

	ADCON1 	= 0B01011101;						// Enable A/D Converter
	ADCON0 	= 0B10001001;						// Select 64* Oscillator
	GO		= 1;								// Start A/D
	
	PR2		= 0B11111111;						// 
	T2CON 	= 0B00000100;						// Timer2 On, Prescaler = 1
	CCP1CON	= 0B00001100;						// Set to PWM mode
}

void	brakeFlash(void)
{
	CCPR1L = 0;
	brake = 1;
	
	while(aSpeed != 128){}						// Wait till motor stops
	while(i < 10)
	{
		PORTB = 0B00000000;
		flashDelay();
		PORTB = 0B11111111;
		flashDelay();
		i = i + 1;
	}
}

void	countUp(void)
{
	if(encoder == 1)						// If encoder goes high...
	{
		while(encoder == 1){}				// Wait for encoder to go low...
		enCount = enCount + 1;				// Increase encoder count
	}		
}

void	PControl(void)
{
	vError = vRef - aSpeed;				// Calculate velocity error
	PORTB  = vError;					// Display error on PORTB LED's

	duty = vError * K_p;				// Calculate duty cycle

	if(duty > 255)						// If duty > 255...
	{
		CCPR1L = 255;					// Set duty to 100%
	}
	else if(duty < 0)
	{
		CCPR1L = 0;
	}
	else
	{
		CCPR1L = duty;					// Set speed to duty cycle
	}
}

void	PIDControl(void)
{
	vError = vRef - aSpeed;
	vErrorDiff = vError - vErrorDiff;
	vErrorInt = vErrorInt + vError;

	PORTB = vError;

	duty = K_p * vError;
	duty = duty + K_d * vErrorDiff;
	duty = duty + K_i * vErrorInt;			// Calculate duty cycle

	if(duty > 255)							// If duty > 255...
	{
		CCPR1L = 255;					// Set duty to 100%
	}
	else if(duty < 0)
	{
		CCPR1L = 0;
	}
	else
	{
		CCPR1L = duty;					// Set speed to duty cycle
	}		
}

void	indexMotor(void)
{
	while(eCount < 4)						// While eddy count less than 4... 
	{
		PControl();
		if(eddySensor == 1)					// If eddy sensor high...
		{
			while(eddySensor == 1){}		// Wait for eddy sensor to go low...
			eCount = eCount + 1;			// Increase count for eddy sensor
		}
	}	

	CCPR1L = 0;									// Stop motor from rotating
}

void	interrupt isrAD(void)					// Interrupt when A/D finished
{
	Speed = Speed + ADRESH;						// Add A/D value to Speed 
	Count = Count + 1;							// Increase Count

	if(Count == 64)
	{
		aSpeed = Speed/64;						// Take average speed
		Count = 0;								// Reset counter
		Speed = 0;								// Reset speed counter
	}
	
	ADIF	= 0;								// Clear ADIF bit
	GO 		= 1;								// Start A/D Conversion again	
}

void	Mode0(void)								// Mode 0 selected
{
	CCPR1L	= vRef;								// Rotate at reference velocty

	while(1 != 2)								// Infinite loop
	{
		while(enCount < 100)					// Wait for full rotation...
		{
			countUp();
			PControl();	
		}
		enCount = 0;							// Reset encoder count
		vRef = vRef + 1;						// Increase ref. vel. by 1
	

		if(vRef == 190)
		{
			while(enCount < 6000)
			{
				countUp();
				PControl();
			}
			enCount = 0;
			break;
		}			
	}
	while(1 != 2)
	{
		while(enCount < 100)
		{
			countUp();
			PControl();
		}
		enCount = 0;
		vRef = vRef - 1;

		if(vRef == 140)
		{
			brakeFlash();
			break;	
		}
	}
}

void	Mode3(void)								// Mode 3 selected
{
	CCPR1L	= vRef;								// Rotate at reference velocty

	while(1 != 2)								// Infinite loop
	{
		while(enCount < 100)					// Wait for full rotation...
		{
			countUp();
			PIDControl();
		}
		enCount = 0;							// Reset encoder count
		vRef = vRef + 1;						// Increase ref. vel. by 1
		
		if(vRef == 190)
		{
			while(enCount < 6000)
			{
				countUp();
				PIDControl();
			}
			enCount = 0;
			break;
		}			
	}	
	while(1 != 2)
	{
		while(enCount < 100)
		{
			countUp();
			PIDControl();
		}
		enCount = 0;
		vRef = vRef - 1;

		if(aSpeed == 140)
		{
			brakeFlash();
			break;	
		}
	}	
}

void	main(void)								// Main code
{

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

// Intialize Ports and Registers

		initAtoD_PWM();	
		initPort();	
		indexMotor();

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

//. Start Main function

	while(1 != 2)								// Infinite loop
	{
		if(blackButton == 1)					// If black button pressed...
		{
			while(blackButton == 1){}			// Wait for release...
			SwitchDelay();						// Let switch debounce
			
			if(RC4 == 1 && RC5 == 1)			// If Mode 0 selected...
			{
				Mode0();						// Call Mode 0
			}
			if(RC4 == 0 && RC5 == 0)			// If Mode 3 selected...
			{
				Mode3();						// Call Mode 3
			}
		}
	}

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

}