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
	if instance_exists(obj_control) and obj_control.win == false
	{
		obj_control.win = true;
		if obj_control.bones == obj_control.bonesMax
		{
			obj_control.rank++;
		}
		if obj_control.eggs == obj_control.eggsMax
		{
			obj_control.rank++;
		}
		if obj_control.timeMinutes < 1
		{
			obj_control.rank++
		}
		obj_control.alarm[1] = 300;
	}
	
	if instance_exists(obj_modo)
	{
		obj_modo.canMove = false;
		obj_modo.speedCur = 0;
		obj_modo.sprite_index = spr_modoIdle;
	}
	
	if instance_exists(obj_modoKid)
	{
		obj_modoKid.canMove = false;
		obj_modoKid.speedCur = 0;
		obj_modoKid.sprite_index = spr_modoKidIdle;
	}
}

if sprite_index == spr_chickenChuckRun
{
	speed += 0.5;
}