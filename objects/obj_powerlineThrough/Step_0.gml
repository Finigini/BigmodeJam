/// @description Insert description here
// You can write your code in this editor




if instance_exists(obj_camera)
{
	if !input_check("down",0,0)
	and obj_camera.y < y-16
	{
		instance_change(obj_powerline,true);
	}
}

if place_meeting(x,y-1,obj_modo)
or place_meeting(x,y-1,obj_modoKid)
{
	image_index = 1;
}
else
{
	image_index = 0;
}