/// @description stuff

if bonesMax == 0
and eggsMax == 0
{
	bonesMax = instance_number(obj_bone);
	eggsMax = instance_number(obj_egg);
}

boneDirection += 5;

if canRestart == true
and input_check_pressed("accept",0,0)
{
	game_restart();
}