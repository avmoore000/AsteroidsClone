/// @description Insert description here
// You can write your code in this editor

instance_destroy(other);
//
//audio_play_sound(snd_bulletCollision, 1, false);
effect_create_above(ef_explosion, x, y, 1, c_orange);

direction = random(360);

if sprite_index == spr_asteroid1
{
	asteroidIndex = random_range(0,3);
	sprite_index = spriteArray[asteroidIndex];
	amSmall = true;
	speed = irandom(10);
	obj_game.points += 100;
	
	instance_copy(true);
}
else 
{
	obj_game.points += 50;
	
	if instance_number(obj_rock) < 12
	{
		sprite_index = spr_asteroid1;
		speed = irandom(7);
		x = -100;
	}
	else
	{
		instance_destroy();
	}
}
