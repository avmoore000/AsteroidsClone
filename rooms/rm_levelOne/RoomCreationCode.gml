if obj_game.spawn == true
{

	// Spawn the asteroids
	for (var i = 0; i < irandom(12) + 3; i += 1)
	{
		x = irandom(room_width);
		y = irandom(room_height);
	
		if !position_empty(x,y)  // Keep from spawning on top of player and other asteroids
		{
			x += 100;
			y += 100;
		}
		
		instance_create_layer(irandom(room_width), irandom(room_height), "Instances", obj_rock);
	}
}