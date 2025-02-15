// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Inventory() constructor{
	
	_inventory = [];
	_max_inventory_items = 20;
	
	add = function(_sprite, _name, _object){
		if(array_length(_inventory) < _max_inventory_items){
			array_push(_inventory, {
				
			});
		}
	}
}