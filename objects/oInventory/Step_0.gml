/// @description Insert description here

//toggle the inventory screen
if(keyboard_check_released(ord("I"))){
	is_showing_inventory = ! is_showing_inventory;
	
	//if we are not showing the inventory, then deselect all items
	if(is_showing_inventory == false){
		inventory.deselect();
	}
}

if(is_showing_inventory == true){
	if(mouse_check_button_released(mb_left)){
		//grab mouse based on gui
		var mx = device_mouse_x_to_gui(0);
		var my = device_mouse_y_to_gui(0);
		
		//figure out what column
		var width_half = display_get_gui_width() / 2;
		var item_number_half = inventory._max_inventory_items / 2;
		var sprite_width_padding = 32 + 32;
		
		var column_start = width_half - (sprite_width_padding * floor(item_number_half));
		var column_stop = width_half + (sprite_width_padding * floor(item_number_half));
		
		var _items = inventory.getAll();
		for (var i = 0; i < array_length(_items); i++){
			if(mx > column_start + (i * sprite_width_padding) - 16){
				if(mx < column_start + (i * sprite_width_padding) + 16){
					if(_items[i].hover == true){
						instance_create_depth(mouse_x, mouse_y, depth - 1, Object2)
						
						inventory.remove(i);
					} else{
					inventory.select(i);
					}
				}
			}
		}
	}
}
