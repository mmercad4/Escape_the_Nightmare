if can_spawn_heart{if drop < 20{instance_create_layer(x,y,"Instances",obj_health)}}

obj_player.points += 10

if (obj_player.points = 50) obj_room_gen.win = true

// no respawn code
global.dead_enemies[? Identifier] = true;