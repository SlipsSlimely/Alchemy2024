/// @description Insert description here
// get inputs
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

			//resume game
			case 0:
				Object_Pause.pause = false;
				instance_activate_all();
				instance_destroy();
				break;

			//inventory
			case 1:
				menu_level = 1;
				break;

			//quit game
			case 2:
				game_end();
				break;
			}
		break;
		
		//inventory menu
		case 1:
			switch(pos){

			//Wolf Potion
			case 0:
				if (global.party[0].wolf < 3 && global.party[0].combined < 3)
				{
					global.party[0].wolf++;
					global.party[0].combined++;
					if (global.party[0].wolf == 1 && global.party[0].combined == 1)
					{
						global.party[0].sprites.idle = sWolf1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.bite;
						
					}
					else if (global.party[0].wolf == 2 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sWolf2;
						global.party[0].attack++;
					}
					else if (global.party[0].wolf == 1 && global.party[0].spider == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sWolf1Spider1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.bite;
						global.party[0].actions[2] = global.actionLibrary.webbing;
					}
					else if (global.party[0].wolf == 1 && global.party[0].ooze == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sWolf1Ooze1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.bite;
						global.party[0].actions[2] = global.actionLibrary.sludge;
					}
					else if (global.party[0].wolf == 1 && global.party[0].cat == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sWolf1Cat1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.bite;
						global.party[0].actions[2] = global.actionLibrary.scratch;
					}
					else if (global.party[0].wolf == 1 && global.party[0].rat == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sWolf1Rat1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.bite;
						global.party[0].actions[2] = global.actionLibrary.squeak;
					}
					else if (global.party[0].wolf == 1 && global.party[0].human == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sWolf1Human1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.bite;
						global.party[0].actions[2] = global.actionLibrary.bonk;
					}
					else if (global.party[0].wolf == 1 && global.party[0].fly == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sWolf1Fly1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.bite;
						global.party[0].actions[2] = global.actionLibrary.buzz;
					}
					else if (global.party[0].wolf == 1 && global.party[0].snake == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sWolf1Snake1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.bite;
						global.party[0].actions[2] = global.actionLibrary.restrict;
					}
					else if (global.party[0].wolf == 3 && global.party[0].combined == 3)
					{
						global.party[0].sprites.idle = sWolf3;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.bite;
					}
					
					
				}
				else if(global.party[0].wolf == 3 || global.party[0].combined == 3)
				{
					break;
				}
				else
				{
					global.party[0].sprites.idle = sAmalgam;
					break;
				}
				break;

			//Spider Potion
			case 1:
				if (global.party[0].spider < 3 && global.party[0].combined < 3)
				{
					global.party[0].spider++;
					global.party[0].combined++;
					if (global.party[0].spider == 1 && global.party[0].combined == 1)
					{
						global.party[0].sprites.idle = sSpider1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.webbing;
					}
					else if (global.party[0].spider == 2 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSpider2;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.webbing;
					}
					else if (global.party[0].wolf == 1 && global.party[0].spider == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sWolf1Spider1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.webbing;
						global.party[0].actions[2] = global.actionLibrary.bite;
					}
					else if (global.party[0].spider == 1 && global.party[0].ooze == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSpider1Ooze1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.webbing;
						global.party[0].actions[2] = global.actionLibrary.sludge;
					}
					else if (global.party[0].spider == 1 && global.party[0].cat == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSpider1Cat1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.webbing;
						global.party[0].actions[2] = global.actionLibrary.scratch;
					}
					else if (global.party[0].spider == 1 && global.party[0].rat == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSpider1Rat1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.webbing;
						global.party[0].actions[2] = global.actionLibrary.squeak;
					}
					else if (global.party[0].spider == 1 && global.party[0].human == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSpider1Human1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.webbing;
						global.party[0].actions[2] = global.actionLibrary.bonk;
					}
					else if (global.party[0].spider == 1 && global.party[0].fly == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSpider1Fly1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.webbing;
						global.party[0].actions[2] = global.actionLibrary.buzz;
					}
					else if (global.party[0].spider == 1 && global.party[0].snake == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSpider1Snake1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.webbing;
						global.party[0].actions[2] = global.actionLibrary.restrict;
					}
					else if (global.party[0].spider == 3  && global.party[0].combined == 3)
					{
						global.party[0].sprites.idle = sSpider3;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.webbing;
					}
					
					
				}
				else if(global.party[0].spider == 3 || global.party[0].combined == 3)
				{
					break;
				}
				else
				{
					global.party[0].sprites.idle = sAmalgam;
					break;
				}
				break;
			//Ooze Potion
			case 2:
				if (global.party[0].ooze < 3 && global.party[0].combined < 3)
				{
					global.party[0].ooze++;
					global.party[0].combined++;
					if (global.party[0].ooze == 1 && global.party[0].combined == 1)
					{
						global.party[0].sprites.idle = sOoze1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.sludge;
					}
					else if (global.party[0].ooze == 2 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sOoze2;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.sludge;
					}
					else if (global.party[0].ooze == 1 && global.party[0].spider == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSpider1Ooze1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.sludge;
						global.party[0].actions[2] = global.actionLibrary.webbing;
					}
					else if (global.party[0].wolf == 1 && global.party[0].ooze == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sWolf1Ooze1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.sludge;
						global.party[0].actions[2] = global.actionLibrary.bite;
					}
					else if (global.party[0].ooze == 1 && global.party[0].cat == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sOoze1Cat1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.sludge;
						global.party[0].actions[2] = global.actionLibrary.scratch;
					}
					else if (global.party[0].ooze == 1 && global.party[0].rat == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sOoze1Rat1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.sludge;
						global.party[0].actions[2] = global.actionLibrary.squeak;
					}
					else if (global.party[0].ooze == 1 && global.party[0].human == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sOoze1Human1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.sludge;
						global.party[0].actions[2] = global.actionLibrary.bonk;
					}
					else if (global.party[0].ooze == 1 && global.party[0].fly == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sOoze1Fly1;
						global.party[0].actions[1] = global.actionLibrary.sludge;
						global.party[0].actions[2] = global.actionLibrary.buzz;
					}
					else if (global.party[0].ooze == 1 && global.party[0].snake == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sOoze1Snake1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.sludge;
						global.party[0].actions[2] = global.actionLibrary.restrict;
					}
					else if (global.party[0].ooze == 3 && global.party[0].combined == 3)
					{
						global.party[0].sprites.idle = sOoze3;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.sludge;
					}
					
					break;
				}
				else if(global.party[0].ooze == 3 || global.party[0].combined == 3)
				{
					break;
				}
				else
				{
					global.party[0].sprites.idle = sAmalgam;
					break;
				}
				
			//Snake Potion
			case 3:
				if (global.party[0].snake < 3 && global.party[0].combined < 3)
				{
					global.party[0].snake++;
					global.party[0].combined++;
					if (global.party[0].snake == 1 && global.party[0].combined == 1)
					{
						global.party[0].sprites.idle = sSnake1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.restrict;
					}
					else if (global.party[0].snake == 2 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSnake2;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.restrict;

					}
					else if (global.party[0].snake == 1 && global.party[0].spider == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSpider1Snake1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.restrict;
						global.party[0].actions[2] = global.actionLibrary.webbing;
					}
					else if (global.party[0].snake == 1 && global.party[0].ooze == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sOoze1Snake1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.restrict;
						global.party[0].actions[2] = global.actionLibrary.sludge;
					}
					else if (global.party[0].snake == 1 && global.party[0].cat == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSnake1Cat1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.restrict;
						global.party[0].actions[2] = global.actionLibrary.scratch;
					}
					else if (global.party[0].snake == 1 && global.party[0].rat == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSnake1Rat1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.restrict;
						global.party[0].actions[2] = global.actionLibrary.squeak;
					}
					else if (global.party[0].snake == 1 && global.party[0].human == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSnake1Human1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.restrict;
						global.party[0].actions[2] = global.actionLibrary.bonk;
					}
					else if (global.party[0].snake == 1 && global.party[0].fly == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSnake1Fly1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.restrict;
						global.party[0].actions[2] = global.actionLibrary.buzz;
					}
					else if (global.party[0].wolf == 1 && global.party[0].snake == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sWolf1Snake1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.restrict;
						global.party[0].actions[2] = global.actionLibrary.bite;
					}
					else if (global.party[0].snake == 3 && global.party[0].combined == 3)
					{
						global.party[0].sprites.idle = sSnake3;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.restrict;
					}
					
					break;
				}
				else if(global.party[0].snake == 3 || global.party[0].combined == 3)
				{
					break;
				}
				else
				{
					global.party[0].sprites.idle = sAmalgam;
					break;
				}
			
			//Rat Potion
			case 4:
				if (global.party[0].rat < 3 && global.party[0].combined < 3)
				{
					global.party[0].rat++;
					global.party[0].combined++;
					if (global.party[0].rat == 1 && global.party[0].combined == 1)
					{
						global.party[0].sprites.idle = sRat1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.squeak;
					}
					else if (global.party[0].rat == 2 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sRat2;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.squeak;
					}
					else if (global.party[0].rat == 1 && global.party[0].spider == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSpider1Rat1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.squeak;
						global.party[0].actions[2] = global.actionLibrary.webbing;
					}
					else if (global.party[0].rat == 1 && global.party[0].ooze == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sOoze1Rat1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.squeak;
						global.party[0].actions[2] = global.actionLibrary.sludge;
					}
					else if (global.party[0].rat == 1 && global.party[0].cat == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sRat1Cat1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.squeak;
						global.party[0].actions[2] = global.actionLibrary.scratch;
					}
					else if (global.party[0].wolf == 1 && global.party[0].rat == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sWolf1Rat1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.squeak;
						global.party[0].actions[2] = global.actionLibrary.bite;
					}
					else if (global.party[0].rat == 1 && global.party[0].human == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sRat1Human1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.squeak;
						global.party[0].actions[2] = global.actionLibrary.bonk;
					}
					else if (global.party[0].rat == 1 && global.party[0].fly == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sRat1Fly1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.squeak;
						global.party[0].actions[2] = global.actionLibrary.buzz;
					}
					else if (global.party[0].rat == 1 && global.party[0].snake == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSnake1Rat1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.squeak;
						global.party[0].actions[2] = global.actionLibrary.restrict;
					}
					else if (global.party[0].rat == 3 && global.party[0].combined == 3)
					{
						global.party[0].sprites.idle = sRat3;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.squeak;
					}
					
					break;
				}
				else if(global.party[0].rat == 3 || global.party[0].combined == 3)
				{
					break;
				}
				else
				{
					global.party[0].sprites.idle = sAmalgam;
					break;
				}
			
			//Next Page
			case 5:
				menu_level = 2;
				break;
			
			//Back
			case 6:
				menu_level = 0;
				break;
			}
		break;
		//Inventory page 2
		case 2:
			switch(pos){
				
			//Cat Potion
			case 0:
				if (global.party[0].cat < 3 && global.party[0].combined < 3)
				{
					global.party[0].cat++;
					global.party[0].combined++;
					if (global.party[0].cat == 1 && global.party[0].combined == 1)
					{
						global.party[0].sprites.idle = sCat1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.scratch;
					}
					else if (global.party[0].cat == 2 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sCat2;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.scratch;
					}
					else if (global.party[0].cat == 1 && global.party[0].spider == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSpider1Cat1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.scratch;
						global.party[0].actions[2] = global.actionLibrary.webbing;
					}
					else if (global.party[0].cat == 1 && global.party[0].ooze == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sOoze1Cat1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.scratch;
						global.party[0].actions[2] = global.actionLibrary.sludge;
					}
					else if (global.party[0].wolf == 1 && global.party[0].cat == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sWolf1Cat1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.scratch;
						global.party[0].actions[2] = global.actionLibrary.bite;
					}
					else if (global.party[0].cat == 1 && global.party[0].rat == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sRat1Cat1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.scratch;
						global.party[0].actions[2] = global.actionLibrary.squeak;
					}
					else if (global.party[0].cat == 1 && global.party[0].human == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sCat1Human1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.scratch;
						global.party[0].actions[2] = global.actionLibrary.bonk;
					}
					else if (global.party[0].cat == 1 && global.party[0].fly == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sCat1Fly1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.scratch;
						global.party[0].actions[2] = global.actionLibrary.buzz;
					}
					else if (global.party[0].cat == 1 && global.party[0].snake == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSnake1Cat1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.scratch;
						global.party[0].actions[2] = global.actionLibrary.restrict;
					}
					else if (global.party[0].cat == 3 && global.party[0].combined == 3)
					{
						global.party[0].sprites.idle = sCat3;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.scratch;
					}
					
					break;
				}
				else if(global.party[0].cat == 3 || global.party[0].combined == 3)
				{
					break;
				}
				else
				{
					global.party[0].sprites.idle = sAmalgam;
					break;
				}
			
			//Human Potion
			case 1:
				if (global.party[0].human < 3 && global.party[0].combined < 3)
				{
					global.party[0].human++;
					global.party[0].combined++;
					if (global.party[0].human == 1 && global.party[0].combined == 1)
					{
						global.party[0].sprites.idle = sHuman1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.bonk;
					}
					else if (global.party[0].human == 2 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sHuman2;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.bonk;
					}
					else if (global.party[0].human == 1 && global.party[0].spider == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSpider1Human1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.bonk;
						global.party[0].actions[2] = global.actionLibrary.webbing;
					}
					else if (global.party[0].human == 1 && global.party[0].ooze == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sOoze1Human1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.bonk;
						global.party[0].actions[2] = global.actionLibrary.sludge;
					}
					else if (global.party[0].human == 1 && global.party[0].cat == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sCat1Human1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.bonk;
						global.party[0].actions[2] = global.actionLibrary.scratch;
					}
					else if (global.party[0].human == 1 && global.party[0].rat == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sRat1Human1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.bonk;
						global.party[0].actions[2] = global.actionLibrary.squeak;
					}
					else if (global.party[0].wolf == 1 && global.party[0].human == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sWolf1Human1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.bonk;
						global.party[0].actions[2] = global.actionLibrary.bite;
					}
					else if (global.party[0].human == 1 && global.party[0].fly == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sHuman1Fly1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.bonk;
						global.party[0].actions[2] = global.actionLibrary.buzz;
					}
					else if (global.party[0].human == 1 && global.party[0].snake == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSnake1Human1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.bonk;
						global.party[0].actions[2] = global.actionLibrary.restrict;
					}
					else if (global.party[0].human == 3 && global.party[0].combined == 3)
					{
						global.party[0].sprites.idle = sHuman3;
						global.party[0].defense++;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.bonk;
						
					}
					
					break;
				}
				else if(global.party[0].human == 3 || global.party[0].combined == 3)
				{
					break;
				}
				else
				{
					global.party[0].sprites.idle = sAmalgam;
					break;
				}
			
			//Fly Potion
			case 2:
				if (global.party[0].fly < 3 && global.party[0].combined < 3)
				{
					global.party[0].fly++;
					global.party[0].combined++;
					if (global.party[0].fly == 1 && global.party[0].combined == 1)
					{
						global.party[0].sprites.idle = sFly1;
						global.party[0].actions[1] = global.actionLibrary.buzz;
					}
					else if (global.party[0].fly == 2 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sFly2;
						global.party[0].actions[1] = global.actionLibrary.buzz;
					}
					else if (global.party[0].fly == 1 && global.party[0].spider == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSpider1Fly1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.buzz;
						global.party[0].actions[2] = global.actionLibrary.wedding;
					}
					else if (global.party[0].fly == 1 && global.party[0].ooze == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sOoze1Fly1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.buzz;
						global.party[0].actions[2] = global.actionLibrary.sludge;
					}
					else if (global.party[0].fly == 1 && global.party[0].cat == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sCat1Fly1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.buzz;
						global.party[0].actions[2] = global.actionLibrary.scratch;
					}
					else if (global.party[0].fly == 1 && global.party[0].rat == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sRat1Fly1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.buzz;
						global.party[0].actions[2] = global.actionLibrary.squeak;
					}
					else if (global.party[0].fly == 1 && global.party[0].human == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sHuman1Fly1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.buzz;
						global.party[0].actions[2] = global.actionLibrary.bonk;
					}
					else if (global.party[0].wolf == 1 && global.party[0].fly == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sWolf1Fly1;
						global.party[0].attack++;
						global.party[0].actions[1] = global.actionLibrary.buzz;
						global.party[0].actions[2] = global.actionLibrary.bite;
					}
					else if (global.party[0].fly == 1 && global.party[0].snake == 1 && global.party[0].combined == 2)
					{
						global.party[0].sprites.idle = sSnake1Fly1;
						global.party[0].defense++;
						global.party[0].actions[1] = global.actionLibrary.buzz;
						global.party[0].actions[2] = global.actionLibrary.restrict;
					}
					else if (global.party[0].fly == 3 && global.party[0].combined == 3)
					{
						global.party[0].sprites.idle = sFly3;
						global.party[0].actions[1] = global.actionLibrary.buzz;
					}
					
					break;
				}
				else if(global.party[0].fly == 3 || global.party[0].combined == 3)
				{
					break;
				}
				else
				{
					global.party[0].sprites.idle = sAmalgam;
					break;
				}

			//clear potions
			case 3:
				global.party[0].fly = 0;
				global.party[0].human = 0;
				global.party[0].ooze = 0;
				global.party[0].rat = 0;
				global.party[0].snake = 0;
				global.party[0].cat = 0;
				global.party[0].spider = 0;
				global.party[0].wolf = 0;
				global.party[0].combined = 0;
				global.party[0].attack = 2;
				global.party[0].defense = 2;
				break;

			//previous page
			case 4:
				menu_level = 1;
				break;
			
			}
		break;
	}

//set position of the menu to 0 so nothing breaks
if _sml != menu_level {pos = 0};

//correct option length
op_length = array_length(option[menu_level]);

}