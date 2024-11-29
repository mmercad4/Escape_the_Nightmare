/// @description Insert description here


var text_x = room_width / 2; //- string_width(text) / 2;
var text_y = room_height / 2 - string_height(text) * 2.5 ;


draw_set_color(c_lime);
draw_set_font(fnt_title);
draw_text(text_x, text_y, text);

