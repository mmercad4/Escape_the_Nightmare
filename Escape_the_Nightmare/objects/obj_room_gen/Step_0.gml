/// @description Insert description here
// You can write your code in this editor
if (win) {
    draw_set_halign(fa_center); // Center align the text
    draw_set_valign(fa_middle);
    draw_text(room_width / 2, room_height / 2, "You won!"); // Draws the text at the center of the room
	
	if(instance_exists(obj_player)){instance_destroy(obj_player)}
	instance_destroy()
	//room_goto(rm_win)
	// Need to destroy all persistent objects when won so that game 
	// does not crash when going to win screen
}