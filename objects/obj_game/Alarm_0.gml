/// @description Restart Level and End Game

if room == rm_creditsScreen
{
	room_goto(rm_titleScreen);
}
if room == rm_titleScreen
{
	room_goto(rm_highScores);
}
else if room == rm_highScores
{
	room_goto(rm_titleScreen);
}
else if room != rm_nameSelect
{
	if gameOver == false
	{
		room_restart();
		audio_resume_all();
		paused = false;	
		
		alarm[1] = 120;
	}	

	else if gameOver == true
	{
		room_goto(rm_gameOver);
	}
}
else if room == rm_gameOver
{
	room_goto(rm_titleScreen);
}