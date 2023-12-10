/// @description every frame

if place_meeting(x,y,obj_modoKid)
{
	with(obj_modoKid)
	{
		instance_change(obj_modo,true);
	}
}

speed = alarm[0]/30