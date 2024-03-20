/// @description Handle Keyboard Events.
#region User Input
if keyboard_check_pressed(vk_left)
{
	if room == rm_nameSelect
	{
		obj_nameCreator.PL = true;
	}
}
else
{
	if room == rm_nameSelect
	{
		obj_nameCreator.PL = false;
	}
}

if keyboard_check(vk_left)
{
	if room == rm_levelOne and instance_exists(obj_player)
	{
		obj_player.PL = true;
	}
}
else
{
	if room == rm_levelOne and instance_exists(obj_player)
	{
		obj_player.PL = false;
	}
}

if keyboard_check_pressed(vk_right)
{
	if room == rm_nameSelect
	{
		obj_nameCreator.PR = true;
	}
}
else
{
	if room == rm_nameSelect
	{
		obj_nameCreator.PR = false;
	}
}

if keyboard_check(vk_right)
{
	if room == rm_levelOne and instance_exists(obj_player)
	{
		obj_player.PR = true;
	}
}
else
{
	if room == rm_levelOne and instance_exists(obj_player)
	{
		obj_player.PR = false;
	}
}

if keyboard_check_pressed(vk_up)
{
	if room == rm_nameSelect
	{
		obj_nameCreator.PU = true;
	}
}
else
{
	if room == rm_nameSelect
	{
		obj_nameCreator.PU = false;
	}
}

if keyboard_check(vk_up)
{
	if room == rm_levelOne and instance_exists(obj_player)
	{
		obj_player.PU = true;
	}
}
else
{
	if room == rm_levelOne and instance_exists(obj_player)
	{
		obj_player.PU = false;
	}
}

if keyboard_check_pressed(vk_down)
{
	if room == rm_nameSelect
	{
		obj_nameCreator.PD = true;
	}
}
else
{
	if room == rm_nameSelect
	{
		obj_nameCreator.PD = false;
	}
}

if keyboard_check(vk_down)
{
	if room == rm_levelOne and instance_exists(obj_player)
	{
		obj_player.PD = true;
	}
}
else
{
	if room == rm_levelOne and instance_exists(obj_player)
	{
		obj_player.PD = false;
	}
}

if keyboard_check_pressed(vk_space)
{
	if room == rm_nameSelect
	{
		obj_nameCreator.POK = true;
	}
	else if room == rm_highScores
	{
		room_goto(rm_titleScreen);
		roomStart = true;
	}
	else if room == rm_gameOver
	{
		gameOver = false;
		points = 0;
		roomStart = true;
		currentLives = 3;
		paused = false;
		alarm[0] = 10;
	}
}
else
{
	if room == rm_nameSelect
	{
		obj_nameCreator.POK = false;
	}
}

if keyboard_check_released(vk_space)
{
	if room == rm_titleScreen
	{
		room_goto(rm_nameSelect);
		nameSelected = false;
	}
	else if room == rm_levelOne and instance_exists(obj_player)
	{
		obj_player.PFIRE = true;
	}
}

if keyboard_check_pressed(vk_shift)
{
	if room == rm_nameSelect
	{
		obj_nameCreator.PSEL = true;
	}
}
else
{
	if room == rm_nameSelect
	{
		obj_nameCreator.PSEL = false;
	}
}

if keyboard_check(vk_shift)
{
	if room == rm_levelOne and instance_exists(obj_player)
	{
		obj_player.PSHIFT = true;
	}
}
else
{
	if room == rm_levelOne and instance_exists(obj_player)
	{
		obj_player.PSHIFT = false;
	}
}

if keyboard_check_pressed(vk_backspace)
{
	if room == rm_nameSelect
	{
		obj_nameCreator.PDEL = true;
	}
}
else
{
	if room == rm_nameSelect
	{
		obj_nameCreator.PDEL = false;
	}
}

if mouse_check_button_pressed(mb_left)
{
	if room == rm_levelOne
	{
		if !instance_exists(obj_player) and !paused
		{
			instance_create_layer(mouse_x, mouse_y, "Instances", obj_player);
		}
	}
}

#endregion

if nameSelected
{
	nameSelected = false;
	gameStarted = true;
	instance_destroy(obj_player);
	instance_destroy(obj_nameCreator);
	room_goto(rm_levelOne);
}
	