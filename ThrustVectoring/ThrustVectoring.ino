#include <GyroFuncs.h>
#include <JoyStickFuncs.h>
#include <ServoFuncs.h>

// Setup Joystick Functions with digital 2 being Switch pin
// and analog 0 and 1 being the x and y data pins respectably
JoystickFuncs joystickFuncs(2, 0, 1);

// Set up servo funcs and servo with the x servo being controlled
// by pin 9 and the y servo with pin 10
ServoFuncs servoFuncs = ServoFuncs();

void setup()
{
  Serial.println("Starting Servos...");
  servoFuncs.init();
  Serial.begin(9600);
  delay(1000); //wait for a second
}

void loop()
{
  AdjustServos();
  delay(200);
}

void AdjustServos()
{
  float xVal = GetJoystickServoXVal();
  float yVal = GetJoystickServoYVal();
  servoFuncs.SetServo(0, xVal);
  servoFuncs.SetServo(1, yVal);
}

// Module to get the value of joystick Y value and convert it to a value useable by the servo
float GetJoystickServoYVal()
{
  float joyVal = joystickFuncs.GetYVal();
  return (joyVal / 1024 * 180);
}

// Module to get the value of joystick X value and convert it to a value useable by the servo
float GetJoystickServoXVal()
{
  float joyVal = joystickFuncs.GetXVal();
  return (joyVal / 1024 * 180);
}
