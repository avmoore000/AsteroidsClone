/// @description Move Between Levels, reset control variables.

if room == rm_titleScreen
{
	if keyboard_check_released(vk_space)
	{
		room_goto(rm_nameSelect);
	}
}

else if room == rm_nameSelect
{
	if (nameCreation == true)
	{
		if keyboard_check_pressed(vk_left)
		{
			obj_nameCreator.PL = true;
		}
		else
		{
			obj_nameCreator.PL = false;
		}
	
		if keyboard_check_pressed(vk_right)
		{
			obj_nameCreator.PR = true;
		}
		else
		{
			obj_nameCreator.PR = false;
		}
	
		if keyboard_check_pressed(vk_up)
		{
			obj_nameCreator.PU = true;
		}
		else
		{
			obj_nameCreator.PU = false;
		}
	
		if keyboard_check_pressed(vk_down)
		{
			obj_nameCreator.PD = true;
		}
		else
		{
			obj_nameCreator.PD = false;
		}
	
		if keyboard_check_pressed(vk_space)
		{
			obj_nameCreator.POK = true;
		}
		else
		{
			obj_nameCreator.POK = false;
		}
		
		if keyboard_check_pressed(vk_shift)
		{
			obj_nameCreator.PSEL = true;
		}
		else
		{
			obj_nameCreator.PSEL = false;
		}
	
		if keyboard_check_pressed(vk_backspace)
		{
			obj_nameCreator.PDEL = true;
		}
		else
		{
			obj_nameCreator.PDEL = false;
		}
	}
	else
	{
		if nameSelected
		{
			room_goto(rm_levelOne);
		}
		
		if keyboard_check_pressed(vk_space) and !instance_exists(obj_nameCreator)
		{
			instance_create_depth(0, 0, depth - 50, obj_nameCreator);
			obj_player.x = 126;
			obj_player.y = 307;
			obj_nameCreator.characterToName = obj_player.id;
			obj_nameCreator.currentName = obj_player.name;
			nameCreation = true;
		}
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
	

	if keyboard_check_released(vk_space)
	{
		room_goto(rm_titleScreen);
		gameOver = false;
		points = 0;
		roomStart = true;
		lives = 3;
	}
}