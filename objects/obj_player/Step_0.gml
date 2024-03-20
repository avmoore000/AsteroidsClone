/// @description Insert description here
// You can write your code in this editor

if room != rm_nameSelect
{
	if audio_is_playing(snd_playerDeath)
	{
		obj_game.paused = true;
	}
	
	if PL
	{
		image_angle += 4;
	}
	
	if PR
	{
		image_angle -= 4;
	}
	
	if PU
	{
		motion_add(image_angle, 0.1);
	}

	if PD
	{
		motion_add(image_angle, -0.1);
	}
	
	if PFIRE
	{
		audio_play_sound(snd_weaponsFire, 1, false);
		instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_bullet);
		PFIRE = false;
	}
	
	if PSHIFT
	{
		audio_play_sound(snd_weaponsFire, 1, false);
		instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_bullet);
	}

	move_wrap(true, true, 0);

}
else  // Rotate sprite in name select screen
{
	image_angle += 1;
}