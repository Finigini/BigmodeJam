/// @description every frame

if place_meeting(x,y,obj_modo)
{
	with(obj_modo)
	{
		instance_change(obj_modoKid,true);
	}
}

speed = alarm[0]/30