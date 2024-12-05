event_inherited();

speed = 3; // Movement speed
original_speed = 2
move_timer = irandom_range(30, 90); // Random duration for each direction
direction = irandom(360); // Random initial direction
sprite_index = spr_ghost_attack; // Default sprite
proximity_range = 100; // Distance at which the orc reacts

image_xscale = 2;
image_yscale = 2; 

shoot_interval = 100; // Time between shots (60 frames = 1 second at 60 FPS)
alarm[0] = shoot_interval; // Start the shooting alarm
