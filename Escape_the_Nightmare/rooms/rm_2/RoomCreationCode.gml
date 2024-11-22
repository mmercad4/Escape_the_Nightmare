if instance_exists(obj_enemy){
	obj_enemy.x = irandom_range(obj_enemy.sprite_xoffset , room_width - obj_enemy.sprite_xoffset)
	obj_enemy.y = irandom_range(obj_enemy.sprite_yoffset , room_height - obj_enemy.sprite_xoffset)
}