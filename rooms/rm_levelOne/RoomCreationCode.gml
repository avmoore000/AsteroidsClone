// Spawn the asteroids
for (var i = 0; i < irandom(12); i += 1)
{
	
	instance_create_layer(irandom(room_width), irandom(room_height), "Instances", obj_rock);
}