//Directions: 
	//0: north
	//1: east
	//2: south
	//3: west
var next_room = -1
if dir == 0 { 
	next_room = obj_room_gen.rooms[obj_room_gen.current_room_idx - 10] 
	obj_room_gen.current_room_idx = obj_room_gen.current_room_idx - 10
	}
if dir == 1 { 
	next_room = obj_room_gen.rooms[obj_room_gen.current_room_idx + 1] 
	obj_room_gen.current_room_idx = obj_room_gen.current_room_idx + 1
	}
if dir == 2 { 
	next_room = obj_room_gen.rooms[obj_room_gen.current_room_idx + 10] 
	obj_room_gen.current_room_idx = obj_room_gen.current_room_idx + 10
	}
if dir == 3 { 
	next_room = obj_room_gen.rooms[obj_room_gen.current_room_idx - 1] 
	obj_room_gen.current_room_idx = obj_room_gen.current_room_idx - 1
	}
obj_room_gen.prev_dir = dir

//There's hopefully a better way of doing this, but I couldn't find one
//Wanted to do this with a struct, but the accessor of a struct has to be a variable, it can't be a float
//or string, making it tough to get an easy reference of which id belongs to which room.

//Find the next room based on the room index taken from the rooms list in the controller object
show_debug_message("Next room ID: " + string(next_room))


if next_room == 0 { room_goto(rm_start) }
if next_room == 1 { room_goto(rm_1) }
if next_room == 2 { room_goto(rm_2) }
if next_room == 3 { room_goto(rm_3) }
if next_room == 4 { room_goto(rm_4) }