// Display the player's points on the top right of the screen
draw_set_color(c_white); // Set text color to white
draw_set_halign(fa_right); // Align text to the right
draw_set_valign(fa_top); // Align text to the top

// Draw the points at the top right corner
draw_text(room_width - 10, 10, "Points: " + string(points));

// Check if the win condition is true
if (points >= 50) {
    // Set the alignment for center display
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    
    // Draw "You Won!" at the center of the screen
    draw_text(room_width / 2, room_height / 2, "You Won!");
}

if (collision_message != "") {
    draw_set_color(c_white); // Set text color to white
    draw_set_halign(fa_center); // Center align text
    draw_set_valign(fa_middle); // Middle align text

    // Display the collision message at the center of the room
    draw_text(room_width / 2, room_height / 6, collision_message);
}