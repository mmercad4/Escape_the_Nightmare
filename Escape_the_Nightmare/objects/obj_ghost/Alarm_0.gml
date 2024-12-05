// Determine the shooting direction towards the player
if (instance_exists(obj_player)) {
    var shoot_dir = point_direction(x, y, obj_player.x, obj_player.y);

    // Create the projectile
    var bullet = instance_create_layer(x, y, "Instances", obj_ghost_bullet);
    bullet.direction = shoot_dir; // Set the bullet's direction
    bullet.speed = 5; // Set bullet speed
    bullet.image_xscale = 2; // Double the width
    bullet.image_yscale = 2;
}

// Reset the alarm for the next shot
alarm[0] = shoot_interval;
