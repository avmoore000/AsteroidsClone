/// @description Control audio for levels
// You can write your code in this editor

if room == rm_titleScreen
{
	audio_stop_all();
	audio_play_sound(snd_titleScreen, 1, true);
	alarm[0] = 1500;
}
else if room == rm_highScores
{
	alarm[0] = 1500;
}
else if room == rm_levelOne and roomStart == true
{
	audio_stop_all();
	audio_play_sound(snd_levelOneMusic, 1, true);
	roomStart = false;
	alarm[1] = 20;
	
	life[0] = instance_create_layer(928, 64, "Instances", obj_lifeDisplay);
	life[1] = instance_create_layer(864, 64, "Instances", obj_lifeDisplay);
	life[2] = instance_create_layer(800, 64, "Instances", obj_lifeDisplay);
}

else if room == rm_gameOver and roomStart == true
{
	audio_stop_all();
	audio_play_sound(snd_gameOverScreen, 1, true);
	roomStart = false;
	highscore_add(name, points);
}
