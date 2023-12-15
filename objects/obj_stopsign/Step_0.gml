/// @description every frame

if place_meeting(x,y,obj_camera)
and checkpoint == false
{
	checkpoint = true;
	sprite_index = spr_stopsignMad;
	if instance_exists(obj_control)
	{
		obj_control.checkPointX = x;
		obj_control.checkPointY = y;
	}
	with(instance_create_depth(x,y,-1000,obj_popupText))
	{
		sprite_index = spr_popupCheckpoint;
	}
}