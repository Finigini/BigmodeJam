/// @description Insert description here
// You can write your code in this editor

if speed > 0
{
	if place_meeting(x,y,obj_modo)
	{
		with(obj_modo)
		{
			if canMove == true
			{
				speedCur = 0;
				vspeed = 0;
				canMove = false;
				image_index = 0;
				sprite_index = spr_modoSquished;
				alarm[0] = 90;
				audio_play_sound(sou_squish,10,false);
			}
		}
	}
	if place_meeting(x,y,obj_modoKid)
	{
		with(obj_modoKid)
		{
			if canMove == true
			{
				speedCur = 0;
				vspeed = 0;
				canMove = false;
				image_index = 0;
				sprite_index = spr_modoSquished;
				alarm[0] = 90;
				audio_play_sound(sou_squish,10,false);
			}
		}
	}
}