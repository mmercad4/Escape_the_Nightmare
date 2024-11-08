vspeed = clamp(vspeed,-8,8)
hspeed = clamp(hspeed,-8,8)

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
						vspeed : 15,
						direction : 90,
						image_angle : 90,
						hspeed : obj_player.hspeed/3.5
					})
}
if can_shoot = true and keyboard_check(vk_down){
	can_shoot = false
	alarm[0] = fire_rate;
	instance_create_layer(x,y,"Instances", obj_bullet, //Create bullet instances
					{
						//Pass in creation variables to bullets
						vspeed : 15,
						direction : 270,
						image_angle : 270,
						hspeed : obj_player.hspeed/3.5
					})
}
if can_shoot = true and keyboard_check(vk_right){
	can_shoot = false
	alarm[0] = fire_rate;
	instance_create_layer(x,y,"Instances", obj_bullet, //Create bullet instances
					{
						//Pass in creation variables to bullets
						hspeed : 15,
						//direction : 0,
						image_angle : 0,
						vspeed : obj_player.vspeed/3.5
					})
}
if can_shoot = true and keyboard_check(vk_left){
	can_shoot = false
	alarm[0] = fire_rate;
	instance_create_layer(x,y,"Instances", obj_bullet, //Create bullet instances
					{
						//Pass in creation variables to bullets
						hspeed : -15,
						//direction : 180,
						image_angle : 180,
						vspeed : obj_player.vspeed/3.5
					})
}