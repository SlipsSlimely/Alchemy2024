/// @description Insert description here

sprite_index = item.sprite;

if place_meeting(x,y, Object_Player)
{
	item_add(item);
	global.Inventory.PotionPouch.wolfPotionPouch++;
	instance_destroy();
}