# RocketStuff
This is a repo containing CAD 3d design files and arduino code for a model rocket thrust vectoring system. The arduino project is written in C++ using the arduino project structure. The hardware system consists of an arduino UNO board, a joystick, and two sg90 servos.

## Project Hierarchy
Main project is contained in the __ThrustVectoringSystem__ folder.

- JoystickFuncs
  - This is a function library which is used to control input from a joystick. A joystick was used in the first stages of development in place of an accelerometer since it was easier to test the servo action this way.
- ServoFuncs
  - This function library is used to interface and set up the servos so that they can be used.
