// Display the player's points on the top right of the screen
draw_set_color(c_white); // Set text color to white
draw_set_halign(fa_right); // Align text to the right
draw_set_valign(fa_top); // Align text to the top

// Draw the points at the top right corner
draw_text(room_width - 10, 10, "Points: " + string(points));

if (collision_message != "") {
    draw_set_color(c_white); // Set text color to white
    draw_set_halign(fa_center); // Center align text
    draw_set_valign(fa_middle); // Middle align text

    // Display the collision message at the center of the room
    draw_text(room_width / 2, room_height / 6, collision_message);
}



for (var i = 0; i < hp; i++){
	draw_sprite(spr_health, 0, (80 + 24 * i), room_height - 30)
}

draw_text(room_width/25 + 10,room_height - 50, "Hp:")