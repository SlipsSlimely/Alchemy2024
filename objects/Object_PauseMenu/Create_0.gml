/// @description This sets up the information for the main menu





width = 64;
height = 104;

op_border = 8;
op_space = 16;

pos = 0;

//pause menu
option[0, 0] = "Resume";
option[0, 1] = "Inventory";
option[0, 2] = "Quit Game";

//Inventory menu
option[1, 0] = "Wolf Potion: " + string(global.party[0].wolfPotion);
option[1, 1] = "Spider Potion: " + string(global.party[0].spiderPotion);
option[1, 2] = "Ooze Potion: " + string(global.party[0].oozePotion);
option[1, 3] = "Snake Potion: " + string(global.party[0].snakePotion);
option[1, 4] = "Rat Potion: " + string(global.party[0].ratPotion);
option[1, 5] = "Next Page";
option[1, 6] = "Back";

//Second Inventory menu
option[2, 0] = "Cat Potion: " + string(global.party[0].catPotion);
option[2, 1] = "Human Potion: " + string(global.party[0].humanPotion);
option[2, 2] = "Fly Potion: " + string(global.party[0].flyPotion);
option[2, 3] = "Clear All Potions";
option[2, 4] = "Previous Page";

op_length = 0;
menu_level = 0;