/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (direction > 45 && direction <= 135) {
    sprite_index = enemy_move_up;
}
else if (direction > 135 && direction <= 225) {
    sprite_index = enemy_move_left;
}
else if (direction > 225 && direction <= 315) {
    sprite_index = enemy_move_down;
}
else {
    sprite_index = enemy_move_right;
}