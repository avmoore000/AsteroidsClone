/// @description Restart Level and End Game

if room == rm_titleScreen
{
	room_goto(rm_highScores);
}
else if room == rm_highScores
{
	room_goto(rm_titleScreen);
}
else
{
	if gameOver == false
	{
		room_restart();
		audio_resume_all();
		alarm[1] = 20;
	}	

	else if gameOver == true
	{
		room_goto(rm_gameOver);
	}
}