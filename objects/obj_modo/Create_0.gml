/// @description create event
speedMax = 12;
speedMin = 2;
speedCur = 0;
acceleration = 0.05;
coyoteTime = 0;

canMove = true;
footstepSound = noone;
skidding = false;

depth = 0;

if instance_exists(obj_control)
{
	obj_control.checkPointX = x;
	obj_control.checkPointY = y;
}