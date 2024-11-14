if drop < 20{
	instance_create_layer(x,y,"Instances",obj_health)
}

obj_player.points += 10

if (obj_player.points = 50) obj_room_gen.win = true