/*
 Name:		ServoFuncs.h
 Created:	2/13/2019 8:15:20 AM
 Author:	jaert
 Editor:	http://www.visualmicro.com
*/

#ifndef _ServoFuncs_h
#define _ServoFuncs_h

#include "arduino.h"
#include <servo.h>

class ServoFuncs
{
public:
	ServoFuncs();
	void init();
	void SetServo(int servoId, float value);
	int ReadServo(int servoId);
private:
	Servo servos[2];
};


#endif

