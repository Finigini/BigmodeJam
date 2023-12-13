/// @description every frame

if place_meeting(x,y,obj_modo)
{
	instance_destroy()
	with(obj_modo)
	{
		speedCur = 0;
		vspeed = 0;
		canMove = false;
		image_index = 0;
		sprite_index = spr_modoEatEgg;
	}
}
if place_meeting(x,y,obj_modoKid)
{
	instance_destroy()
	with(obj_modoKid)
	{
		speedCur = 0;
		vspeed = 0;
		canMove = false;
		image_index = 0;
		sprite_index = spr_modoEatEgg;
	}
}

speed = alarm[0]/30