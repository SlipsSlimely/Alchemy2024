/// @description Inventory system from Peyton Burnham

//Code here could possibly be moved to GameData script


depth = -9999;

//item constructor
function create_item(_name, _desc, _spr, _effect) constructor
{
	name = _name;
	description = _desc;
	sprite = _spr;
	effect = _effect;
}

//create items
global.item_list =
{
	// burger is an example of a healing item
	burger : new create_item(
		"Burger",
		"It's a burger!",
		sBurger,
		
		//below is the function allowing any created items to do basically anything we want
		function()
		{
			
			global.party[0].hp += 10;
			
			//delete the item from our inventory
			array_delete(inv, selected_item, 1)
		}
		
		),
		
	// bomb is an example of an item that can be used to effect the environment. Unlikely we use it
	bomb : new create_item(
		"Bomb",
		"It's a bomb!",
		sBurger,
		
		function()
		{
			//places a "bomb" at the players location
			instance_create_depth(Object_Player.x, Object_Player.y, 0, oItemOverworld);
			
			//delete the item from our inventory
			array_delete(inv, selected_item, 1)
			//can make an item "permanent" by checking the player characters stats
		}
		),
}

//create inventory

inv = array_create(0);

selected_item = -1;
	
//for drawing and mouse positions
sep = 16;
screen_bord = 16;