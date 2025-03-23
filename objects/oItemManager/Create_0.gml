/// @description Inventory system from Peyton Burnham

//Code here could possibly be moved to GameData script


depth = -9999;

//create items

global.item_list =
{

	burger : 
		{
	
		name : "Burger",
		description : "It's a burger!",
		sprite : sBurger,
	
		},
		
	bomb : 
		{
	
		name : "Bomb",
		description : "It's a bomb!",
		sprite : sBurger,
	
		}
}

//create inventory

inv = array_create(0);

	array_push(inv, global.item_list.burger);