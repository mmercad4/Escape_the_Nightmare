var split_rooms = string_split(string(rooms), ",")
if split_rooms[0] == "[ -1" { split_rooms[0] = "-1" }


var cnt = 0
for (var k = 0; k < 8; k++) {
	var xx = 5
	var yy = 5
	yy += k*25
	for (var i = 0; i<9; i++) {
		draw_set_color(c_white)
		if cnt == current_room_idx { draw_set_color(c_green) }
		
		xx += 25
		if split_rooms[cnt] == -1 { draw_text_ext(xx, yy, ".",5,10) }
		else { draw_text_ext(xx, yy, string(split_rooms[cnt]),5,10) }
		cnt+=1
	}
	cnt+=1
	if (cnt == array_length(split_rooms) - 1) { break }
}
