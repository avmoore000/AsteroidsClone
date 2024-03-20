/// @description Insert description here
// You can write your code in this editor


effect_create_above(ef_firework, x, y, 1, c_purple);
audio_pause_all();
audio_play_sound(snd_playerDeath, 1, false);
obj_game.currentLives--;
obj_game.paused = true;
	
if obj_game.currentLives < 0
{
	obj_game.gameOver = true;
	obj_game.roomStart = true;
}
else
{
	if obj_game.currentLives == 2
	{
		instance_destroy(obj_game.life[2]);
	}
	else if obj_game.currentLives == 1
	{
		instance_destroy(obj_game.life[1]);
	}
	else
	{
		instance_destroy(obj_game.life[0]);
	}
}
	
obj_game.alarm[0] = 200;
instance_destroy();