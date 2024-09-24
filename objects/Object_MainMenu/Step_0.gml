/// @description Insert description here
//get inputs
var up_key = keyboard_check_pressed(vk_up);
var down_key = keyboard_check_pressed(vk_down);
var accept_key = keyboard_check_pressed(vk_enter);

//store number of options in current menu
op_length = array_length(option[menu_level]);

//move through the menu
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length - 1};

//using the options
if accept_key{
	
var _sml = menu_level;
	
	switch(menu_level){
		
		//pause menu
		case 0:
			switch(pos){

			//start game
			case 0:
				room_goto_next();
				break;
				
			//Controls
			case 1:
				room_goto(Room4);
				break;

			//Credits
			case 2:
				room_goto(Room3);
				break;

			//quit game
			case 3:
				game_end();
				break;
			}
		break;
		
		//settings menu
		//case 1:
		//	switch(pos){

		//	//window size
		//	case 0:
				
		//		break;

		//	//brightness
		//	case 1:
	
		//		break;

		//	//controls
		//	case 2:
				
		//		break;
				
		//	//back
		//	case 3:
		//		menu_level = 0;
		//		break;
		//	}
	}

//set position of the menu to 0 so nothing breaks
if _sml != menu_level {pos = 0};

//correct option length
op_length = array_length(option[menu_level]);

}