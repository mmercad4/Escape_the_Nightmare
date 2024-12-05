// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generateRandomItems(){
/// @description Randomly spawn enemies in the room

// Array of enemy objects
var item_objects = [obj_camera_zoom, obj_large_player, obj_small_player, 
					obj_confusing_bullets, obj_fast_bullets, obj_large_bullets, 
					obj_small_bullets];

var num_items = irandom_range(1, 2);
var spawn_margin = 32;

for (var i = 0; i < num_items; i++) {
    var item_type = item_objects[irandom(array_length(item_objects) - 1)];
    var spawn_x = irandom_range(spawn_margin, room_width - spawn_margin);
    var spawn_y = irandom_range(spawn_margin, room_height - spawn_margin);

    instance_create_layer(spawn_x, spawn_y, "Instances", item_type);
}

}