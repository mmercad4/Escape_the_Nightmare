/// @description Insert description here
// You can write your code in this editor

/*
if boss_dead{
	draw_set_color(c_lime);
	draw_set_font(font);
	
	draw_text_transformed(x,y, text, font_scale, font_scale, 0);
}
*/

//x = x - string_width(text)/2;
//y = y - string_height(text)/2;

draw_set_color(font_color);
draw_set_font(font);
	
draw_text_transformed(x,y, text, font_scale, font_scale, 0)