/// @description respawn at checkpoint

if instance_exists(obj_control)
{
	sprite_index = spr_modoChange;
	x = obj_control.checkPointX;
	y = obj_control.checkPointY;
}