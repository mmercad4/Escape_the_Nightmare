/// @description Orc movement and sprite direction
// Inherit the parent event
event_inherited();

// Check if the player exists
if (instance_exists(obj_player)) {
    var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

    // Attack if the player is within proximity range
    if (distance_to_player <= proximity_range) {
        var dir_to_player = point_direction(x, y, obj_player.x, obj_player.y);

        // Set attack sprite based on player direction
        if (dir_to_player >= 45 && dir_to_player < 135) {
            sprite_index = spr_orc1_attack_up; // Attack downward
        } else if (dir_to_player >= 135 && dir_to_player < 225) {
            sprite_index = spr_orc1_attack_left; // Attack left
        } else if (dir_to_player >= 225 && dir_to_player < 315) {
            sprite_index = spr_orc1_attack_down; // Attack upward
        } else {
            sprite_index = spr_orc1_attack_right; // Attack right
        }

        // Exit to avoid overriding attack sprites with movement sprites
        exit;
    }
}

// If not attacking, resume movement
speed = original_speed; // Replace `original_speed` with the orc's normal speed value
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Check for collision with obj_wall
if (place_meeting(x, y, obj_wall)) {
    // Backtrack to avoid getting stuck in the block
    x -= lengthdir_x(speed, direction);
    y -= lengthdir_y(speed, direction);

    // Choose a new random direction (any angle between 0 and 360 degrees)
    direction = irandom_range(0, 360);
}

// Set movement sprite based on direction
if (direction >= 45 && direction < 135) {
    sprite_index = spr_orc1_walk_down; // Moving down
} else if (direction >= 135 && direction < 225) {
    sprite_index = spr_orc1_walk_left; // Moving left
} else if (direction >= 225 && direction < 315) {
    sprite_index = spr_orc1_walk_up; // Moving up
} else {
    sprite_index = spr_orc1_walk_right; // Moving right
}
