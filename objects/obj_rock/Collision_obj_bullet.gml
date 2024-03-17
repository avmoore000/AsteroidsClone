/// @description Insert description here
// You can write your code in this editor

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_green);

direction = random(360);



if sprite_index == spr_asteroid1
{
	asteroidIndex = random_range(0,3);
	sprite_index = spriteArray[asteroidIndex];
	amSmall = true;
	
	instance_copy(true);
}
else if instance_number(obj_rock) < 12
{
	sprite_index = spr_asteroid1;
	x = -100;
}
else
{
	instance_destroy();
}
