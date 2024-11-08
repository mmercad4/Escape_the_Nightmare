draw_set_color(c_black)
draw_set_alpha(0.25)
draw_rectangle(0,0,1920,150,false)
draw_set_alpha(1)

var hearts  = obj_player.hp
var half_drawn = false

if instance_exists(obj_player){
	draw_text(100,150,"Health packs: ")
	for(i = obj_player.hp; i > 0 ; i--){
		if i == 1 or i ==2 or i ==3 or i ==4{
			draw_sprite_ext(spr_health,0,(180+48*i),150,2,2,0,c_white,1)
		}
		if i == 0.5 or i == 1.5 or i==2.5 or i == 3.5{
			if half_drawn == false{
				draw_sprite_ext(spr_halfheart,0,(180+48*i),150,2,2,0,c_white,1)
				half_drawn = true
			}
			for(j = i-0.5 ; j > 0 ; j--){
				draw_sprite_ext(spr_health,0,(180+48*j),150,2,2,0,c_white,1)
				}
			}
		}
}