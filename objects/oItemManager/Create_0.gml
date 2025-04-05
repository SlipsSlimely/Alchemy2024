/// @description Inventory system from Peyton Burnham

//Code here could possibly be moved to GameData script


depth = -9999;

//item constructor
function create_item(_name, _desc, _spr) constructor
{
	name = _name;
	description = _desc;
	sprite = _spr;
}

//create items
global.item_list =
{

	burger : new create_item(
		"Burger",
		"It's a burger!",
		sBurger
		),
		
	bomb : new create_item(
		"Bomb",
		"It's a bomb!",
		sBurger
		),
}

//create inventory

inv = array_create(0);

	
//for drawing and mouse positions
sep = 16;
screen_bord = 16;