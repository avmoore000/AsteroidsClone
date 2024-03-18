/// @description Insert description here
// You can write your code in this editor

// Remove the lives from the life display 
if lives == 2
{
	instance_destroy(inst_79CCDE74);
}
else if lives == 1
{
	instance_destroy(inst_79CCDE74);
	instance_destroy(inst_2D047000);
}
else if lives == 0
{
	instance_destroy(inst_79CCDE74);
	instance_destroy(inst_2D047000);
	instance_destroy(inst_30A5A1BF);
}