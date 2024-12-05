/// @description Insert description here
// You can write your code in this editor

if(is_hit || is_burning){
	shader_set(sh_FlashRed);
	shader_set_uniform_f(sh_handle_timer_hit, hit_timer)
	draw_self()
	shader_reset()
}
else{
	draw_self()
}