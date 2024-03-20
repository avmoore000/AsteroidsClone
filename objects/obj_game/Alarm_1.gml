/// @description Timed Asteroid spawns

	// Spawn the asteroids
	for (var i = 0; i < irandom(2) + 3; i += 1)
	{
		var temp = irandom(100);
		
		if (temp % 2)
		{
			x = -100;
		}
		else
		{
			x = room_width + 100;
		}
		
		y = irandom(room_height);
	
		
		
		instance_create_layer(irandom(room_width), irandom(room_height), "Instances", obj_rock);
	}