// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generateRandomEnemies(){
/// @description Randomly spawn enemies in the room

// Array of enemy objects
var enemy_objects = [obj_ghost, obj_orc, obj_slime];

var num_enemies = irandom_range(2, 5);
var spawn_margin = 32;

for (var i = 0; i < num_enemies; i++) {
    var enemy_type = enemy_objects[irandom(array_length(enemy_objects) - 1)];
    var spawn_x = irandom_range(spawn_margin, room_width - spawn_margin);
    var spawn_y = irandom_range(spawn_margin, room_height - spawn_margin);

    instance_create_layer(spawn_x, spawn_y, "Instances", enemy_type);
}

}