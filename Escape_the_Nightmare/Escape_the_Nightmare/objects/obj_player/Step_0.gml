vspeed = clamp(vspeed,min_speed,max_speed)
hspeed = clamp(hspeed,min_speed,max_speed)

if keyboard_check(ord("A")) hspeed -= move_speed
if keyboard_check(ord("D")) hspeed += move_speed
if keyboard_check(ord("W")) vspeed -= move_speed
if keyboard_check(ord("S")) vspeed += move_speed



if hp<=0{
	instance_destroy()
}


x = clamp(x, sprite_width/2, room_width-sprite_width/2)
y = clamp(y, sprite_height/2, room_height-sprite_height/2)


if can_shoot = true and keyboard_check(vk_up){
	can_shoot = false
	alarm[0] = fire_rate;
	instance_create_layer(x,y,"Instances", obj_bullet, //Create bullet instances
					{
						//Pass in creation variables to bullets
						direction : 90 + bullet_angle,
						image_angle : 90,
						speed : bullet_speed,
						image_xscale: bullet_scale,
						image_yscale: bullet_scale
					})
}
if can_shoot = true and keyboard_check(vk_down){
	can_shoot = false
	alarm[0] = fire_rate;
	instance_create_layer(x,y,"Instances", obj_bullet, //Create bullet instances
					{
						//Pass in creation variables to bullets
						direction : 270 + bullet_angle,
						image_angle : 270,
						speed: bullet_speed,
						image_xscale: bullet_scale,
						image_yscale: bullet_scale
					})
}
if can_shoot = true and keyboard_check(vk_right){
	can_shoot = false
	alarm[0] = fire_rate;
	instance_create_layer(x,y,"Instances", obj_bullet, //Create bullet instances
					{
						//Pass in creation variables to bullets
						direction : 0 + bullet_angle,
						image_angle : 0,
						speed : bullet_speed,
						image_xscale: bullet_scale,
						image_yscale: bullet_scale
					})
}
if can_shoot = true and keyboard_check(vk_left){
	can_shoot = false
	alarm[0] = fire_rate;
	instance_create_layer(x,y,"Instances", obj_bullet, //Create bullet instances
					{
						//Pass in creation variables to bullets
						direction : 180 + bullet_angle,
						image_angle : 180,
						speed : bullet_speed,
						image_xscale: bullet_scale,
						image_yscale: bullet_scale
					})
}