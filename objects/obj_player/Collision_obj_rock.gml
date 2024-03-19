/// @description Insert description here
// You can write your code in this editor


effect_create_above(ef_firework, x, y, 1, c_purple);
audio_pause_all();
audio_play_sound(snd_playerDeath, 1, false);
instance_destroy();
lives--;
	
if lives < 0
{
	obj_game.gameOver = true;
	obj_game.roomStart = true;
}
	
obj_game.alarm[0] = 200;