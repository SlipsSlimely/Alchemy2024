/// @description Insert description here

if(is_showing_inventory){
	//figure out what column
	var width_half = display_get_gui_width() / 2;
	var height_half = display_get_gui_height() / 2;
	
	var item_number_half = inventory._max_inventory_items / 2;
	var sprite_width_padding = 32 + 32;
		
	var xx = width_half - (sprite_width_padding * floor(item_number_half));
	var yy = height_half;
	
	//always draw background
	for (var i = 0; i < inventory._max_inventory_items; i++){
		draw_sprite(SpInventory, 0, xx + (sprite_width_padding * i), yy);
	}
		
	var _items = inventory.getAll();
	for (var i = 0; i < array_length(_items); i++){
		//draw sprite
		draw_sprite(_items[i].sprite, 0, xx + (sprite_width_padding * i), yy);
			
		//hovering
		if(_items[i].hover){
			draw_set_color(c_white);
			draw_rectangle(xx + (sprite_width_padding * i) - 16, yy - 16, xx + (sprite_width_padding * i) + 16, yy + 16, true);
		}
	
		//draw text
		draw_set_halign(fa_center);
		draw_text_ext_transformed(xx + (sprite_width_padding * i), yy + (sprite_width_padding / 2), _items[i].name, 24, 50, 0.75, 0.75, 15);
	}
	
	
}
	

	

