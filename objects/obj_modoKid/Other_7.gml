/// @description end animation

if sprite_index = spr_modoEatEgg
{
	canMove = true;
	sprite_index = spr_modoKidIdle;
	if instance_exists(obj_control)
	{
		obj_control.eggs++;
	}
}

if sprite_index = spr_modoChange
{
	canMove = true;
	instance_change(obj_modo,true);
}