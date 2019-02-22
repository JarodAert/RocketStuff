/*
 Name:		ServoFuncs.cpp
 Created:	2/13/2019 8:15:20 AM
 Author:	jaert
 Editor:	http://www.visualmicro.com
*/

#include "ServoFuncs.h"

static const short X_SERVO_PIN = 9;
static const short Y_SERVO_PIN = 10;

ServoFuncs::ServoFuncs()
{
}

void ServoFuncs::init()
{
	servos[0].attach(X_SERVO_PIN); //attachs the servo on pin 9 to servo object
	Serial.println("X Servo to 0");
	SetServo(0, 0);
	delay(500);
	servos[1].attach(Y_SERVO_PIN); //attachs the servo on pin 10 to servo object
	Serial.println("Y Servo to 0");
	SetServo(1, 0);
	delay(500);
}

// Function to set the servo value for specific servo in servo array
void ServoFuncs::SetServo(int servoId, float value)
{
	servos[servoId].write(value);
}

int ServoFuncs::ReadServo(int servoId)
{
	return (servos[servoId].read());
}
