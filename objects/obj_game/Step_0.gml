/// @description Move Between Levels, reset control variables.

if room == rm_titleScreen
{
	if keyboard_check_released(vk_space)
	{
		room_goto(rm_levelOne);
	}
}

else if room == rm_gameOver
{
	if keyboard_check_released(vk_space)
	{
		room_goto(rm_titleScreen);
		gameOver = false;
		points = 0;
		lives = 3;
	}
}