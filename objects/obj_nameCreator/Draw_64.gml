/// @description Draw the GUI for the Name Creation Screen

draw_set_font(fnt_characterSelect);
fontSize = font_get_size(fnt_characterSelect);
BUFFER = ceil(fontSize / 2);

instructions0 = "Arrow keys to move cursor."
instructions1 = "Spacebar to Select"
instructions2 = "Shift to change case."
instructions3 = "Backspace to delete"

#region Draw Instuctions

	startX = 301;
	startY = 15;
	
	var drawX = startX + (fontSize * 2);
	var drawY = startY;
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_red);
	
	draw_text(drawX, drawY, instructions0);
	
	drawY = startY + (fontSize + BUFFER);
	
	draw_text(drawX, drawY, instructions1);
	
	drawY = startY + (2 * (fontSize + BUFFER));
	draw_text(drawX, drawY, instructions2);
	
	drawY = startY + (3 * (fontSize + BUFFER));
	draw_text(drawX, drawY, instructions3);
    draw_set_color(c_white);
#endregion

#region  Draw Current Name

	startX = 296;
	startY = 320;
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(startX, startY, currentName);

#endregion

#region DRAWLETTERS

startY = 520;
startX = 180;
var charCount = 0;

for (var yy = 0; yy < yLetters; yy++)
{ 
	for (var xx = 0; xx < xLetters; xx++)
	{
		var letter = a_letters[xx, yy];
		
		if showLowerCase and charCount <= 28 and letter != " "
		{
			unicode = ord(letter) + 32;
			letter = chr(unicode);
		}
		
		var drawX = startX + (xx * (fontSize * 2));
		var drawY = startY + (yy * (fontSize + BUFFER));
		
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_text(drawX, drawY, letter);
		
		if (xx == gridX && yy == gridY) draw_sprite(spr_pointer, 0, drawX, drawY + BUFFER);
		
		charCount++;
	}
}

#endregion