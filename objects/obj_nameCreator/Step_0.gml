
#region Move the Cursor

	if !buttonReady
	{
		if HL || HR || HU || HD
		{
			buttonTimer++;
		}
		
		if buttonTimer >= TimeTilButtonReady
		{
			buttonTimer = 0;
			buttonReady = true;
		}
		
		if PR || PL || PU || PD
		{
			buttonTimer = 0;
			buttonReady = true;
		}
	}
	
	
	
	if RL || RR || RU || RD
	{
		buttonTimer = 0;
		buttonReady = false;
	}
	
	if buttonReady
	{
		if PL || HL
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
	
		if PR || HR
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
	
		if PU || HU
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
	
		if PD || HD
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
		
		buttonReady = false;
	}

#endregion

#region Pressed OK

	if POK
	{
		var newLetter = a_letters[gridX, gridY];
		
		if newLetter == "OK"
		{
			obj_game.name = currentName;
		
			audio_play_sound(snd_characterCreated, 1, false);
			alarm[0] = 60;
		}
		
		letterCount = string_length(currentName);
	
		if (letterCount < MAX_LETTERS_IN_NAME)
		{
			if newLetter != "OK"
			{
				if showLowerCase and newLetter != " "
				{
					unicode = ord(newLetter) + 32;
					newLetter = chr(unicode);
				}
			
				currentName += newLetter;
				audio_play_sound(snd_letterSelect, 1, false);
			}
		}
		else
		{
			audio_play_sound(snd_deleteLetter, 1, false);
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
		
		audio_play_sound(snd_deleteLetter, 1, false);
	}

#endregion

#region Pressed Select

	if PSEL
	{
		audio_play_sound(snd_shiftKey, 1, false);
		showLowerCase = !showLowerCase;
	}

#endregion