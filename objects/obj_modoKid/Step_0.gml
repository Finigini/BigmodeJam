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
		skidding = true;
	}
	else
	{
		skidding = false;
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
		skidding = true;
	}
	else
	{
		skidding = false;
	}
}
if input_check_pressed("accept",0,10) and (place_meeting(x,y+1,obj_solid) or coyoteTime > 0)
and !place_meeting(x,y-10,obj_solid)
{
	coyoteTime = 0;
	audio_stop_sound(sou_jump)
	audio_play_sound(sou_jump,10,false,1,0,0.7);
	vspeed = -10;
}
if vspeed < 0 and input_check_released("accept",0,0) //variable jump height if jump released
{
	vspeed = 0;
}

if place_free(x+speedCur,y)
{
	x += speedCur;
}
else
{
	speedCur = 0;
}
}

if canMove == true
{
	if speedCur < 10 and !place_meeting(x,y+1,obj_solid)
	{
		sprite_index = spr_modoKidJump;
		if vspeed > 0
		{
			image_index = 1;
		}
		else if vspeed < 0
		{
			image_index = 0;
		}
	}
	else
	{
		if speedCur != 0
		{
			sprite_index = spr_modoKidWalk;
		}
		else
		{
			sprite_index = spr_modoKidIdle;
		}
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
if coyoteTime > 0
{
	coyoteTime -= 1;
}

//footstep and coyote time
if place_meeting(x,y+1,obj_solid)
{
	coyoteTime = 10;
	var curImage = floor(image_index);
	if (sprite_index == spr_modoKidWalk
	and (curImage == 0 or curImage == 2))
	{
		if !audio_is_playing(footstepSound)
		{
			footstepSound = audio_play_sound(sou_step,10,false,0.5);
		}
	}
}