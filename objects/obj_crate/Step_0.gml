/// @description smashing

if instance_exists(obj_modo)
{
	if abs(obj_modo.speedCur) >= 12
	{
		solid = false;
	}
	else
	{
		solid = true;
	}
	if distance_to_object(obj_modo) <= abs(obj_modo.speedCur)
	and (abs(obj_modo.speedCur) >= 10 or vspeed != 0)
	{
		for(var i = 0; i < 7; i++)
		{
			instance_create_depth(x,y,-100,obj_crateSplinters);
		}
		audio_play_sound(sou_smashCrate,10,false);
		instance_destroy();
	}
}
else
{
	solid = true;
}

//gravity
if place_meeting(x,y+vspeed,obj_solid)
{
	gravity = 0;
	vspeed = 0;
	if vspeed > 0
	{
		move_contact_solid(270,-1);
	}
}
else if !place_meeting(x,y+1,obj_solid)
{
	gravity = 0.5;
}