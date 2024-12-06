if room != rm_gen { //Place doors if not in the generator room
	//Check where to place doors
	var north = false
	var south = false
	var east = false
	var west = false
	
	if rooms[current_room_idx - 10] != -1 { north = true }
	if rooms[current_room_idx + 10] != -1 { south = true }
	if rooms[current_room_idx + 1] != -1 { east = true }
	if rooms[current_room_idx - 1] != -1 { west = true }
	
	//Place doors
	//Directions: 
		//0: north
		//1: east
		//2: south
		//3: west
	if north { instance_create_layer(room_width/2, 8, "Instances", obj_door, {dir : 0}) }
	if east { instance_create_layer(room_width-8, room_height/2, "Instances", obj_door, {dir : 1, image_angle : 90}) }
	if south { instance_create_layer(room_width/2, room_height-8, "Instances", obj_door, {dir : 2}) }
	if west { instance_create_layer(8, room_height/2, "Instances", obj_door, {dir : 3, image_angle : 90}) }
	
	if(instance_exists(obj_player)){
		//Place the player
		if prev_dir == -1 { //Default location (center of room)
			obj_player.x = room_width/2
			obj_player.y = room_height/2	
		}
		else if prev_dir = 0 { //Came from north
			//obj_player.x = room_width/2
			obj_player.y = room_height - obj_player.sprite_height - 24
		}
		else if prev_dir = 1 { //Came from east
			obj_player.x = obj_player.sprite_height + 24
			//obj_player.y = room_height/2	
		}
		else if prev_dir = 2 { //Came from south
			//obj_player.x = room_width/2
			obj_player.y = obj_player.sprite_height + 24
		}
		else if prev_dir = 3 { //Came from west
			obj_player.x = room_width - obj_player.sprite_height - 24
			//obj_player.y = room_height/2	
		}
	}
	else{instance_create_layer(room_width / 2,room_height/2, "Instances", obj_player)}
}