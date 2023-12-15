/// @description respawn at checkpoint

if instance_exists(obj_control)
{
	canMove = true;
	sprite_index = spr_modoKidIdle;
	x = obj_control.checkPointX;
	y = obj_control.checkPointY;
}