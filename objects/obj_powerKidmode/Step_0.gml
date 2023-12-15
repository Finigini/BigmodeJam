/// @description every frame

if place_meeting(x,y,obj_modo)
{
	with(obj_modo)
	{
		if sprite_index != spr_modoKidChange
		{
			speedCur = 0;
			vspeed = 0;
			canMove = false;
			image_index = 0;
			sprite_index = spr_modoKidChange;
			image_speed = 1;
			with(instance_create_depth(x,y,-1000,obj_popupText))
			{
			sprite_index = spr_popupKidmode;
			}
		}
	}
}

speed = alarm[0]/30