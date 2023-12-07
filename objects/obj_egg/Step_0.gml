/// @description every frame

if place_meeting(x,y,obj_modo)
{
	instance_destroy()
	with(obj_modo)
	{
		speedCur = 0;
		vspeed = 0;
		canMove = false;
		sprite_index = spr_modoEatEgg;
	}
}
