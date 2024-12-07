var next_room = -1;

// North (dir == 0)
if dir == 0 {
    if obj_room_gen.current_room_idx - 10 >= 0 { // Check upper boundary
        next_room = obj_room_gen.rooms[obj_room_gen.current_room_idx - 10];
        if next_room != -1 {
            obj_room_gen.current_room_idx -= 10;
        }
    }
}

// East (dir == 1)
if dir == 1 {
    if (obj_room_gen.current_room_idx + 1) mod 10 != 0 and obj_room_gen.current_room_idx + 1 < array_length(obj_room_gen.rooms) { // Check right boundary
        next_room = obj_room_gen.rooms[obj_room_gen.current_room_idx + 1];
        if next_room != -1 {
            obj_room_gen.current_room_idx += 1;
        }
    }
}

// South (dir == 2)
if dir == 2 {
    if obj_room_gen.current_room_idx + 10 < array_length(obj_room_gen.rooms) { // Check lower boundary
        next_room = obj_room_gen.rooms[obj_room_gen.current_room_idx + 10];
        if next_room != -1 {
            obj_room_gen.current_room_idx += 10;
        }
    }
}

// West (dir == 3)
if dir == 3 {
    if obj_room_gen.current_room_idx % 10 != 0 { // Check left boundary
        next_room = obj_room_gen.rooms[obj_room_gen.current_room_idx - 1];
        if next_room != -1 {
            obj_room_gen.current_room_idx -= 1;
        }
    }
}

obj_room_gen.prev_dir = dir;

// Proceed to the next room if valid
if next_room != -1 {
    if next_room == 0 { room_goto(rm_start); }
    if next_room == 1 { room_goto(rm_1); }
    if next_room == 2 { room_goto(rm_2); }
    if next_room == 3 { room_goto(rm_3); }
    if next_room == 4 { room_goto(rm_4); }
}
