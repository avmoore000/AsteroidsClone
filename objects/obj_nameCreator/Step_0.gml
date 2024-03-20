/// @description Insert description here
// You can write your code in this editor

#region Move the Cursor

	if PL == true
	{
		if (gridX - 1) < 0
		{
			gridX = xLetters - 1;
		}
		else
		{
			gridX--;
		}
	}
	
	if PR == true
	{
		if (gridX + 1) >= xLetters
		{
			gridX = 0;
		}
		else
		{
			gridX++;
		}
	}
	
	if PU = true
	{
		if (gridY - 1) < 0
		{
			gridY = yLetters - 1;
		}
		else
		{
			gridY--;
		}
	}
	
	if PD = true
	{
		if (gridY + 1) >= yLetters
		{
			gridY = 0;
		}
		else
		{
			gridY++;
		}
	}

#endregion

#region Pressed OK

	if POK
	{
		var newLetter = a_letters[gridX, gridY];
		
		if newLetter == "OK"
		{
			//characterToName.name = currentName;
			obj_game.name = currentName;
			
			obj_game.nameCreation = false;
			obj_game.nameSelected = true;
		}
		
		letterCount = string_length(currentName);
	
		if newLetter != "OK" and letterCount < MAX_LETTERS_IN_NAME
		{
			if showLowerCase and newLetter != " "
			{
				unicode = ord(newLetter) + 32;
				newLetter = chr(unicode);
			}
			
			currentName += newLetter;
		}
	}

#endregion

#region Pressed Delete

	if PDEL
	{
		var letterCount = string_length(currentName);
		
		if letterCount >= 1
		{
			currentName = string_delete(currentName, letterCount, 1);
		}
	}

#endregion

#region Pressed Select

	if PSEL
	{
		showLowerCase = !showLowerCase;
	}

#endregion