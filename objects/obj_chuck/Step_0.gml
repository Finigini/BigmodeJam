/// @description Insert description here
// You can write your code in this editor



if place_meeting(x,y,obj_modo)
or place_meeting(x,y,obj_modoKid)
and speed == 0
{
	sprite_index = spr_chickenChuckRun;
	direction = 0;
	alarm[0] = 180;
	speed = 2;
}

if sprite_index == spr_chickenChuckRun
{
	speed += 0.5;
}