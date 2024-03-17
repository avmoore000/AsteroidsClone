/// @description This alarm controls the various animations in the title screen.

// The if statements will change the sprite every iteration of the alarm.
if (index < 10)
{
	index++;
}
else if index > 0
{
	index = 0;
}

alarm[0] = 15;