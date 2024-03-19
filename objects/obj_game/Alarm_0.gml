/// @description Restart Level and End Game


if gameOver == false
{
    room_restart();
	audio_resume_all();
	alarm[1] = 20;
	
}
else
{
	room_goto(rm_gameOver);
}