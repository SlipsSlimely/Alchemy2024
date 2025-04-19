/// @description Inventory system from Let's learn this together

//Code here could possibly be moved to GameData script
//This item manager is being used to test out the Beautiful inventory series video, once I'm done with it
//I'll be looking at merging ideas from this test space into the base item manager
//This one is completely torn apart so I can see what the tutorial offers

//All Item Properties
enum Item{
	Name,
	Sprite,
	Amount,
	Type,
	Price,
	Object,
	Height
}

// This second enum is likely all but useless for us, we'll see
// It handles what type things are
enum Type {
	Weapon,
	Armor,
	Consumable
}

// This is for stuff that can cure any status conditions we might come up with
enum Ailment {
	Poison,
	Confused,
	Drunk
}

// This is gonna be used when we auto sort stuff
enum SortType {
	Name,
	Amount,
	Type,
	Price,
	Height
}

global.AllItems = ds_grid_create(0, Item.Height);

AddItemToMasterList(["Small Knife", sBurger, 1, Type.Weapon, 5, oItemOverworld]);