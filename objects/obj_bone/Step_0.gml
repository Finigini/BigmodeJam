/// @description every frame

if (place_meeting(x,y,obj_modo)
or place_meeting(x,y,obj_modoKid))
and collected == false
{
	audio_play_sound(sou_bone,10,false,1,0,choose(1,1.2,0.8,1.1,0.9))
	collected = true;
	image_index = 1;
	image_xscale = 1.5;
	image_yscale = 1.5;
	direction = 90;
}

if collected == true
{
	speed = 3;
	if image_xscale > 0.1
	{
		image_xscale -= 0.05;
		image_yscale -= 0.05;
	}
	else
	{
		instance_destroy();
	}
}
else
{
	image_angle += 5;
	speed = alarm[0]/30;
}