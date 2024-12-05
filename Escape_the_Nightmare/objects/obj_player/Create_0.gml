hp = 10
can_shoot = true
move_horizontal = 0
move_vertical = 0
face_direction = 0
image_index = 13

friction = 0.7;

bullet_scale = 1.5;
bullet_speed = 10
bullet_angle = 0;

min_speed = -8
max_speed = 8

item_array = []

points = 0;

collision_message = ""

// Shader Stuff
is_hit = false
hit_timer = 0
hit_release = room_speed * 0.5
sh_handle_timer_hit = shader_get_uniform(sh_FlashRed, "utimer");

//font stuff
font_enable_effects(fnt_modifiers, true, {
    outlineEnable: true,
    outlineDistance: 2,
    outlineColour: c_black
});