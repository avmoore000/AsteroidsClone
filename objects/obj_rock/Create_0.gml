/// @description Insert description here
// You can write your code in this editor

mySpeed = irandom(5);
direction = random(360);
image_angle = random(360);

asteroidIndex = 0;
amSmall = false;

spriteArray = [];

spriteArray[0] = spr_asteroid1FragType1;
spriteArray[1] = spr_asteroid1FragType2;
spriteArray[2] = spr_asteroid1FragType3;
spriteArray[3] = spr_asteroid1FragType4;

alarm[0] = irandom(20);