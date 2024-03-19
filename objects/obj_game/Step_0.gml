/// @description Move Between Levels, reset control variables.

if room == rm_titleScreen
{
	if keyboard_check_released(vk_space)
	{
		room_goto(rm_levelOne);
	}
}

else if room == rm_highScores
{	
	if keyboard_check_released(vk_space)
	{
		room_goto(rm_titleScreen);
		roomStart = true;
	}
}

else if room == rm_gameOver
{
	highscore_add(name, points);

	if keyboard_check_released(vk_space)
	{
		room_goto(rm_titleScreen);
		gameOver = false;
		points = 0;
		roomStart = true;
		lives = 3;
	}
}