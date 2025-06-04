/// @description Pick-up the item on collision

//set the sprite of the item to whatever sprite is set in the items variables
sprite_index = item.sprite;

//The following triggers when the player touches the object, adding the item to the players inventory
if place_meeting(x,y, Object_Player)
{
	item_add(item);
	global.Inventory.PotionPouch.wolfPotionPouch++;
	instance_destroy();
}