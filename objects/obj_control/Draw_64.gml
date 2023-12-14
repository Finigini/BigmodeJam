/// @description draw stuff


draw_text_scribble(68,64,string(bones)+"/"+string(bonesMax));
draw_sprite_ext(spr_eggIcon,eggImage,32,176,3,3,0,-1,1);
draw_text_scribble(68,170,string(eggs)+"/"+string(eggsMax));
draw_sprite_ext(spr_bone,0,32,80,3,3,boneDirection,-1,1);
draw_sprite_ext(spr_clock,clockImage,32,272,3,3,0,-1,1);

draw_set_halign(fa_left);
draw_set_font(fnt_main);

if timeSeconds < 10
{
	draw_text_scribble(68,264,string(timeMinutes)+":0"+string(timeSeconds));
}
else
{
	draw_text_scribble(68,264,string(timeMinutes)+":"+string(timeSeconds));
}