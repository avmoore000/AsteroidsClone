/// @description Insert description here
// You can write your code in this editor

move_wrap(true, true, 100);

image_angle += 1;

if amSmall
{
	asteroidIndex = random_range(0,3);
	
	sprite_index = spriteArray[asteroidIndex];
	
	amSmall = false;
}
