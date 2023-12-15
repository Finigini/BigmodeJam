/// @description end animation

if sprite_index = spr_modoEatEgg
{
	canMove = true;
	sprite_index = spr_modoIdle;
	if instance_exists(obj_control)
	{
		obj_control.eggs++;
		with(instance_create_depth(x,y,-1000,obj_popupText))
		{
			sprite_index = spr_popupEggcellent;
		}
	}
}

if sprite_index = spr_modoKidChange
{
	canMove = true;
	instance_change(obj_modoKid,true);
}

if sprite_index = spr_modoChange
{
	canMove = true;
	sprite_index = spr_modoIdle;
}