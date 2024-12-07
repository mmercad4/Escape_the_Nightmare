vspeed = clamp(vspeed,-max_speed,max_speed)
hspeed = clamp(hspeed,-max_speed,max_speed)
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
	var max_diagonal_speed = sqrt(sqr(max_speed)/2)
	vspeed = clamp(vspeed,-max_diagonal_speed, max_diagonal_speed)
	hspeed = clamp(hspeed,-max_diagonal_speed,max_diagonal_speed)
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
						direction : 90 + bullet_angle,
						image_angle : 90 + bullet_angle,
						speed : bullet_speed,
						image_xscale: bullet_scale,
						image_yscale: bullet_scale
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
						direction : 270 + bullet_angle,
						image_angle : 270 + bullet_angle,
						speed : bullet_speed,
						image_xscale: bullet_scale,
						image_yscale: bullet_scale
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
						direction : 0 + bullet_angle,
						image_angle : 0 + bullet_angle,
						speed : bullet_speed,
						image_xscale: bullet_scale,
						image_yscale: bullet_scale
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
						direction : 180 + bullet_angle,
						image_angle : 180 + bullet_angle,
						speed : bullet_speed,
						image_xscale: bullet_scale,
						image_yscale: bullet_scale
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


// Shader stuff
if(is_hit){
	hit_timer +=1
	if(hit_timer > hit_release){
		is_hit = false
	}
}
else{
	hit_timer = 0
}

// Handle the burning effect
if (is_burning) {
        hp -= .02;
}