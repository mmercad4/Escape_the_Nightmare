vspeed = clamp(vspeed,-8,8)
hspeed = clamp(hspeed,-8,8)
move_horizontal = 0;
move_vertical = 0;


// Horizontal movement
if (keyboard_check(ord("A"))) {
    move_horizontal = -1;
	face_direction = 4;
    if (can_shoot) {
        sprite_index = spr_character_side;
        image_xscale = 1;
    }
} else if (keyboard_check(ord("D"))) {
    move_horizontal = 1;
	face_direction = 3;
    if (can_shoot) {
        sprite_index = spr_character_side;
        image_xscale = -1;
    }
}

// Vertical movement
if (keyboard_check(ord("W"))) {
    move_vertical = -1;
	face_direction = 1;
    if (can_shoot) sprite_index = spr_character_up;
} else if (keyboard_check(ord("S"))) {
    move_vertical = 1;
	face_direction = 2
    if (can_shoot) sprite_index = spr_character_down;
}

// Normalize speed for diagonal movement
if (move_horizontal != 0 && move_vertical != 0) {
	vspeed = clamp(vspeed,-5.65,5.65)
	hspeed = clamp(hspeed,-5.65,5.65)
    hspeed += move_horizontal * move_speed
    vspeed += move_vertical * move_speed
} else {
    hspeed += move_horizontal * move_speed;
    vspeed += move_vertical * move_speed;
}


if hp<=0{
	instance_destroy()
}


x = clamp(x, sprite_width/2, room_width-sprite_width/2)
y = clamp(y, sprite_height/2, room_height-sprite_height/2)


if can_shoot = true and keyboard_check(vk_up){
	sprite_index = spr_character_scream_up
	face_direction = 1
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
	sprite_index = spr_character_scream_down
	face_direction = 2
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
	sprite_index = spr_character_scream_side
	face_direction = 3
	image_xscale = -1
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
	sprite_index = spr_character_scream_side
	face_direction = 4
	image_xscale = 1
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


if (can_shoot and hspeed == 0 && vspeed == 0) {
	if face_direction = 1 {sprite_index = spr_character_up}
	if face_direction = 2 {sprite_index = spr_character_down}
	if face_direction = 3 {sprite_index = spr_character_side image_xscale = -1}
	if face_direction = 4 {sprite_index = spr_character_side image_xscale = 1}
    image_speed = 0;
    image_index = 0; 
} else {
    image_speed = 1; // Normal animation speed when moving
}
