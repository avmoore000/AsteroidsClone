
/// @description Set up the HUD

if room !=  rm_titleScreen and room != rm_gameOver and room != rm_highScores and room != rm_nameSelect and room != rm_creditsScreen
{
	draw_set_font(fnt_Impact);
	draw_set_color(c_yellow);
	draw_text(30, 20, "Score:  ");
	draw_set_color(c_white);
	draw_text(100, 20, points);
	
	draw_set_color(c_yellow);
	draw_text(700, 20, "Lives:  ");
	
	if !instance_exists(obj_player) and !gameOver and !paused
	{
		draw_set_color(c_white);
		draw_set_font(fnt_Impact);
		draw_text(room_width / 2, room_height / 2, "Select Starting Point with Left Mouse");
	}
}

else if room == rm_highScores
{
	draw_set_font(fnt_highScores);
	draw_set_color(c_red)

	draw_highscore(234,300,729,601);
}