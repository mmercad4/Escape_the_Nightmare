/// @description Insert description here
// You can write your code in this editor
// Create Event of the item object (e.g., obj_large_bullet_item)

// Set the scale factor to make the sprite larger
// For example, to double the size of the sprite:
var scale_factor = 5.0;

name = "general item"

// Adjust the sprite scale
image_xscale = scale_factor;
image_yscale = scale_factor;

partSys = part_system_create_layer("Assets_1", 0, ps_item)

part_system_position(partSys, x,y);