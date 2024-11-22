/// @description Insert description here
// You can write your code in this editor
if canShoot = true{
	canShoot = false
	alarm[0] = spawnInterval
	instance_create_layer(irandom_range(sprite_xoffset , room_width - sprite_xoffset),irandom_range(sprite_yoffset , room_height - sprite_yoffset),"Instances",objectType)
	}
