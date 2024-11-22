hp = enemy_hp
drop = irandom_range(0,100)
can_spawn_heart = true

//no respawn code
Identifier = string(room) + "_" + string(x) + "_" + string(y);
// Check if identifier is on the map.
if(!is_undefined(global.dead_enemies[? Identifier])){
    // Identifier was found, this enemy is already dead.
	obj_player.points -= 10
	can_spawn_heart = false
    instance_destroy();
}