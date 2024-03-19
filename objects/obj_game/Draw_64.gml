/// @description Set up the HUD

if room !=  rm_titleScreen and room != rm_gameOver and room != rm_highScores
{
	draw_set_font(fnt_Impact);
	draw_set_color(c_yellow);
	draw_text(10, 10, "Score:  ");
	draw_set_color(c_white);
	draw_text(100, 10, points);
	
	draw_set_color(c_yellow);
	draw_text(700, 10, "Lives:  ");
}

if room == rm_highScores
{
	draw_set_font(fnt_highScores);
	draw_set_color(c_yellow)

	draw_highscore(room_width / 2,100,300,300);
}