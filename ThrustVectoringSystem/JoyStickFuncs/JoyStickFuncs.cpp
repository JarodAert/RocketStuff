/*
 Name:		JoyStickFuncs.cpp
 Created:	2/13/2019 8:07:48 AM
 Author:	jaert
 Editor:	http://www.visualmicro.com
*/

#include "JoyStickFuncs.h"

JoystickFuncs::JoystickFuncs(int swPin, int xPin, int yPin) {
	SW_pin = swPin;
	X_pin = xPin;
	Y_pin = yPin;
	// Set up joystick
	pinMode(SW_pin, INPUT);
	digitalWrite(SW_pin, HIGH);
}

float JoystickFuncs::GetXVal() {
	return(analogRead(X_pin));
}

float JoystickFuncs::GetYVal() {
	return(analogRead(Y_pin));
}

// Module to get the value of joystick Y value and convert it to a value useable by the servo
float JoystickFuncs::GetXValForServo()
{
	float joyVal = GetXVal();
	return (joyVal / 1024 * 180);
}

// Module to get the value of joystick X value and convert it to a value useable by the servo
float JoystickFuncs::GetYValForServo()
{
	float joyVal = GetYVal();
	return (joyVal / 1024 * 180);
}