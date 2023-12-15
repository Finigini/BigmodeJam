/// @description draw stuff

if win == false
{
	draw_text_scribble(68,64,string(bones)+"/"+string(bonesMax));
	draw_sprite_ext(spr_eggIcon,eggImage,32,176,3,3,0,-1,1);
	draw_text_scribble(72,170,string(eggs)+"/"+string(eggsMax));
	draw_sprite_ext(spr_bone,0,32,80,3,3,boneDirection,-1,1);
	draw_sprite_ext(spr_clock,clockImage,32,272,3,3,0,-1,1);

	draw_set_halign(fa_left);
	draw_set_font(fnt_main);

	if timeSeconds < 10
	{
		draw_text_scribble(72,264,string(timeMinutes)+":0"+string(timeSeconds));
	}
	else
	{
		draw_text_scribble(72,264,string(timeMinutes)+":"+string(timeSeconds));
	}
}
else
{
	draw_set_color(c_grey);
	draw_rectangle(320,240,800,800,-1);
	draw_set_color(c_white);
	draw_text_scribble(384+68,240+64,string(bones)+"/"+string(bonesMax));
	draw_sprite_ext(spr_eggIcon,eggImage,384+32,240+176,3,3,0,-1,1);
	draw_text_scribble(384+72,240+170,string(eggs)+"/"+string(eggsMax));
	draw_sprite_ext(spr_bone,0,384+32,240+80,3,3,boneDirection,-1,1);
	draw_sprite_ext(spr_clock,clockImage,384+32,240+272,3,3,0,-1,1);

	draw_set_halign(fa_left);
	draw_set_font(fnt_main);

	if timeSeconds < 10
	{
		draw_text_scribble(384+72,240+264,string(timeMinutes)+":0"+string(timeSeconds));
	}
	else
	{
		draw_text_scribble(384+72,240+264,string(timeMinutes)+":"+string(timeSeconds));
	}
	
	draw_sprite(spr_popupRank,0,384+72,240+432);
	draw_sprite(spr_rankLetter,rank,384+128,240+400);
	
	if canRestart = true
	{
		draw_sprite(spr_popupPressSpace,0,384+128,240+500);
	}
}