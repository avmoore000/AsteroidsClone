/// @description Control audio for levels
// You can write your code in this editor

audio_stop_all();

if room == rm_titleScreen
{
	audio_play_sound(snd_titleScreen, 1, true);
}
else if room == rm_levelOne and roomStart == true
{
	audio_play_sound(snd_levelOneMusic, 1, true);
	roomStart = false;
}

else if room == rm_gameOver and roomStart == true
{
	// audio_play_sound(snd_gameOverMusic, 1, true);
	roomStart = false;
}
