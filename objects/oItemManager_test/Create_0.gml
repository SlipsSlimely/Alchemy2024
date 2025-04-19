/// @description Inventory system from Let's learn this together

//Code here could possibly be moved to GameData script
//This item manager is being used to test out the Beautiful inventory series video, once I'm done with it
//I'll be looking at merging ideas from this test space into the base item manager


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
	
	
		ratPotion : new create_item(
		"Rat Potion",
		"This potion adds rat genetics to your humunculus",
		sBurger,
		
		//below is the function allowing any created items to do basically anything we want
		function()
		{
			
			global.party[0].rat++;
			
			//delete the item from our inventory
			array_delete(inv, selected_item, 1)
		}
		
		),
		
		wolfPotion : new create_item(
		"Wolf Potion",
		"This potion adds wolf genetics to your humunculus",
		sBurger,
		
		//below is the function allowing any created items to do basically anything we want
		function()
		{
			
			global.party[0].wolf++;
			
			//delete the item from our inventory
			array_delete(inv, selected_item, 1)
		}
		
		),
		
		spiderPotion : new create_item(
		"Spider Potion",
		"This potion adds spider genetics to your humunculus",
		sBurger,
		
		//below is the function allowing any created items to do basically anything we want
		function()
		{
			
			global.party[0].spider++;
			
			//delete the item from our inventory
			array_delete(inv, selected_item, 1)
		}
		
		),
		
		oozePotion : new create_item(
		"Ooze Potion",
		"This potion adds ooze genetics to your humunculus",
		sBurger,
		
		//below is the function allowing any created items to do basically anything we want
		function()
		{
			
			global.party[0].ooze++;
			
			//delete the item from our inventory
			array_delete(inv, selected_item, 1)
		}
		
		),
		
		snakePotion : new create_item(
		"Snake Potion",
		"This potion adds snake genetics to your humunculus",
		sBurger,
		
		//below is the function allowing any created items to do basically anything we want
		function()
		{
			
			global.party[0].snake++;
			
			//delete the item from our inventory
			array_delete(inv, selected_item, 1)
		}
		
		),
		
		catPotion : new create_item(
		"Cat Potion",
		"This potion adds cat genetics to your humunculus",
		sBurger,
		
		//below is the function allowing any created items to do basically anything we want
		function()
		{
			
			global.party[0].cat++;
			
			//delete the item from our inventory
			array_delete(inv, selected_item, 1)
		}
		
		),
		
		humanPotion : new create_item(
		"Human Potion",
		"This potion adds human genetics to your humunculus",
		sBurger,
		
		//below is the function allowing any created items to do basically anything we want
		function()
		{
			
			global.party[0].human++;
			
			//delete the item from our inventory
			array_delete(inv, selected_item, 1)
		}
		
		),
		
		flyPotion : new create_item(
		"Fly Potion",
		"This potion adds fly genetics to your humunculus",
		sBurger,
		
		//below is the function allowing any created items to do basically anything we want
		function()
		{
			
			global.party[0].fly++;
			
			//delete the item from our inventory
			array_delete(inv, selected_item, 1)
		}
		
		),
		
		homunculus : new create_item(
		"Blank Homunculus",
		"A blank homunculus for you to experiment on!",
		sHomunc,
		function()
		{
			homunc =
				{
				name: "The Spawn",
				hp: 10,
				hpMax: 10,
				attack: 3,
				defense: 3,
				rat: 0,
				wolf: 0,
				spider: 0,
				ooze: 0,
				snake: 0,
				cat: 0,
				human: 0,
				fly: 0,
				combined: 0,
				sprites : {idle: sHomunc,},
				actions : [global.actionLibrary.tackle, global.actionLibrary.flee],
				}
			array_push(global.party, homunc)
			
			//delete the item from our inventory
			array_delete(inv, selected_item, 1)
		}
		
		),
	
}

//create inventory
inv = array_create(0);

selected_item = -1;

	
//for drawing and mouse positions
sep = 16;
screen_bord = 16;