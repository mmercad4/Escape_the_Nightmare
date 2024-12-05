event_inherited();

speed = 2; // Movement speed
original_speed = 2
move_timer = irandom_range(30, 90); // Random duration for each direction
direction = irandom(360); // Random initial direction
sprite_index = spr_slime3_walk_down; // Default sprite
proximity_range = 100; // Distance at which the orc reacts

image_xscale = 2;
image_yscale = 2; 