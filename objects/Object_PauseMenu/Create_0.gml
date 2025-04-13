/// @description This sets up the information for the main menu





width = 64;
height = 104;

op_border = 8;
op_space = 16;

pos = 0;

//pause menu
option[0, 0] = "Resume";
option[0, 1] = "Inventory";
option[0, 3] = "Party Manager";
option[0, 2] = "Quit Game";

//Inventory menu
option[1, 0] = "Wolf Potion: " + string(global.Inventory.PotionPouch.wolfPotionPouch);
option[1, 1] = "Spider Potion: " + string(global.Inventory.PotionPouch.spiderPotionPouch);
option[1, 2] = "Ooze Potion: " + string(global.Inventory.PotionPouch.oozePotionPouch);
option[1, 3] = "Snake Potion: " + string(global.Inventory.PotionPouch.snakePotionPouch);
option[1, 4] = "Rat Potion: " + string(global.Inventory.PotionPouch.ratPotionPouch);
option[1, 5] = "Next Page";
option[1, 6] = "Back";

//Second Inventory menu
option[2, 0] = "Cat Potion: " + string(global.Inventory.PotionPouch.catPotionPouch);
option[2, 1] = "Human Potion: " + string(global.Inventory.PotionPouch.humanPotionPouch);
option[2, 2] = "Fly Potion: " + string(global.Inventory.PotionPouch.flyPotionPouch);
option[2, 3] = "Clear All Potions";
option[2, 4] = "Previous Page";

//party manager
option[3, 0] = "" + string(global.party[0].name);
option[3, 1] = ""  + string(global.party[0].name);
option[3, 2] = "Back";

op_length = 0;
menu_level = 0;