/// @description Insert description here

switch (purpose){
	case 0:
		room_goto_next();
	break;
	case 1:
		game_restart();
	break;
	case 2:
		room_goto(rm_gen);
	break;
	case 3:
		game_end()
	break;
}