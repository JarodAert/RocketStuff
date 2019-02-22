// Visual Micro is in vMicro>General>Tutorial Mode
// 
/*
    Name:       ThrustVectoringSystem.ino
    Created:	2/13/2019 8:05:41 AM
    Author:     DESKTOP-LJOTB3Q\jaert
*/
#include <servo.h>
#include <JoyStickFuncs.h>
#include <ServoFuncs.h>
// Setup Joystick Functions with digital 2 being Switch pin
// and analog 0 and 1 being the x and y data pins respectably
JoystickFuncs joystickFuncs(2, 0, 1);

// Set up servo funcs and servo with the x servo being controlled
// by pin 9 and the y servo with pin 10
ServoFuncs servoFuncs = ServoFuncs();


// The setup() function runs once each time the micro-controller starts
void setup()
{
	Serial.println("Starting Servos...");
	servoFuncs.init();
	Serial.begin(9600);
	delay(1000); //wait for a second
}

// Add the main program code into the continuous loop() function
void loop()
{
	AdjustServos();
	delay(200);
}

// Module called in the loop to adjust the servos using the Joystick values
void AdjustServos()
{
	float xVal = joystickFuncs.GetXValForServo();
	float yVal = joystickFuncs.GetYValForServo();
	servoFuncs.SetServo(0, xVal);
	servoFuncs.SetServo(1, yVal);
}

