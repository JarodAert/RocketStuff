/*
 Name:		JoyStickFuncs.h
 Created:	2/13/2019 8:07:48 AM
 Author:	jaert
 Editor:	http://www.visualmicro.com
*/

#ifndef _JoyStickFuncs_h
#define _JoyStickFuncs_h

#include "arduino.h"
class JoystickFuncs
{
public:
	JoystickFuncs(int swpin, int xPin, int yPin);
	float GetXVal();
	float GetYVal();
	float GetXValForServo();
	float GetYValForServo();

private:
	 int SW_pin, X_pin, Y_pin;
};

#endif

