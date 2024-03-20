/// @description Room Creation Events

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
	gameOver = false;
	paused = false;
	
	for (var xx = 0; xx < currentLives; xx++)
	{
		life[xx] = instance_create_layer(928 - (64 * xx),64, "Instances", obj_lifeDisplay);
	}
}

else if room == rm_gameOver and roomStart == true
{
	audio_stop_all();
	audio_play_sound(snd_gameOverScreen, 1, true);
	roomStart = false;
	currentLives = maxLives;
	highscore_add(name, points);
}
