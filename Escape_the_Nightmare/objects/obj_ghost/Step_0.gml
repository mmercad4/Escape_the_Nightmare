/// @description Ghost movement and sprite direction
// Inherit the parent event
event_inherited();

// Check for collision with obj_wall
if (place_meeting(x, y, obj_wall)) {
    // Backtrack to avoid getting stuck in the block
    x -= lengthdir_x(speed, direction);
    y -= lengthdir_y(speed, direction);

    // Choose a new random direction (any angle between 0 and 360 degrees)
    direction = irandom_range(0, 360);
}

// Flip the sprite based on direction
if (direction >= 90 && direction < 270) {
    image_xscale = -2; // Facing left
} else {
    image_xscale = 2; // Facing right
}
