/// @description Object for Getting User Name input

#region DEFINE KEYS

	PL = false;      // Left Key Pressed
	PR = false;     // Right Key Pressed
	PU = false;     // UP Key Pressed
	PD = false;     // Down Key Pressed
	POK = false;    // OK Key Pressed
	PDEL = false;    // Delete Key Pressed
	PSEL = false;    // Select Key Pressed

#endregion

showLowerCase = false;
currentName = "Hero";
characterToName = 0;

#macro MAX_LETTERS_IN_NAME 16

gridX = 0;
gridY = 0;

letterString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ  ";

xLetters = 10;
yLetters = 3;

charCount = 1;

for (var yy = 0; yy < yLetters; yy++)
{
	for (var xx = 0; xx < xLetters; xx++)
	{
		if (charCount <= 29)
		{
			a_letters[xx, yy] = string_char_at(letterString, charCount);
		}
		else
		{
			a_letters[xx, yy] = "OK";
		}
		
		charCount++;
	}
}
