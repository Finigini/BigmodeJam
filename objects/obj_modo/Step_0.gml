/// @description every frame
if speedCur > speedMax
{
	speedCur = speedMax;
}

//movement
if canMove == true
{
if input_check("left",0,0)
{
	image_xscale = -1;
	if abs(speedCur) <= speedMax
	{
		if abs(speedCur) < speedMin
		{
			speedCur = -speedMin;
		}
		speedCur -= acceleration;
	}
	if speedCur > 0
	{
		speedCur = speedCur*0.95;
	}
}
if input_check("right",0,0)
{
	image_xscale = 1;
	if abs(speedCur) <= speedMax
	{
		if abs(speedCur) < speedMin
		{
			speedCur = speedMin;
		}
		speedCur += acceleration;
	}
	if speedCur < 0
	{
		speedCur = speedCur*0.95;
	}
}
if input_check("accept",0,10) and place_meeting(x,y+1,obj_solid)
{
	vspeed = -10;
}

if place_free(x+speedCur,y)
{
	x += speedCur;
}
}

if canMove == true
{
	if abs(speedCur) > 10
	{
		sprite_index = spr_modoSprint;
	}
	else if abs(speedCur) > 4
	{
		sprite_index = spr_modoRun;
	}
	else if speedCur != 0
	{
		sprite_index = spr_modoWalk;
	}
	else
	{
		sprite_index = spr_modoIdle;
	}
}


if !input_check("left",0,0) and !input_check("right",0,0)
{
	speedCur = speedCur*0.9;
	if abs(speedCur) < 0.5
	{
		speedCur = 0;
	}
}
//gravity
if place_meeting(x,y+vspeed,obj_solid)
{
	gravity = 0;
	vspeed = 0;
	if vspeed > 0
	{
		move_contact_solid(270,-1);
	}
}
else if !place_meeting(x,y+1,obj_solid)
{
	gravity = 0.5;
}