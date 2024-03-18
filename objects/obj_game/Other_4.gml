/// @description Insert description here
// You can write your code in this editor

if room == rm_titleScreen
{
	audio_play_sound(snd_titleScreen, 1, true);
}
else if room == rm_levelOne and roomStart == true
{
	audio_stop_all();
	audio_play_sound(snd_levelOneMusic, 1, true);
	roomStart = false;
}
