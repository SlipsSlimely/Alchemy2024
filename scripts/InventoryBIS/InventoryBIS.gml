// Script for Beautiful Inventory Series
/// @description Add an item to master list
/// @param Attributes The array of attributes to add
function AddItemToMasterList(attributes){
	
	ds_grid_resize(global.AllItems, ds_grid_width(global.AllItems) + 1, ds_grid_height(global.AllItems));
	for (var i = 0; i < array_length(attributes); i++){
		global.AllItems[#]
	}
}