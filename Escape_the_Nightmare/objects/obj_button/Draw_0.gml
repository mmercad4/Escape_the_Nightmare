/// @description Insert description here

x = room_width / 2
y = room_height / 2 + button_y_pos * (sprite_get_height(spr_button) + 10)

draw_self()

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_set_font(fnt_modifiers);
draw_text(x,y, button_text);