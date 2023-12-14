/// @description every frame

if place_meeting(x,y,obj_modoKid)
{
	with(obj_modoKid)
	{
		if sprite_index != spr_modoChange
		{
			speedCur = 0;
			vspeed = 0;
			canMove = false;
			image_index = 0;
			sprite_index = spr_modoChange;
			image_speed = 1;
		}
	}
}

speed = alarm[0]/30