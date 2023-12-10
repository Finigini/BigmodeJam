/// @description move to modo
if instance_exists(obj_modo)
{
	x = obj_modo.x;
	y = obj_modo.y;
}
else if instance_exists(obj_modoKid)
{
	x = obj_modoKid.x;
	y = obj_modoKid.y;
}