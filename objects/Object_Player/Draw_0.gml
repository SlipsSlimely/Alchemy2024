/// @description This draws the players inventory

//This is required when adding a draw event to a player character
//Without it the player character won't actually appear due to the draw event existing
draw_self();

if (isShowingMenu) {

	//Pause the game
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_rectangle(0, 0, room_width, room_height, false);
	
	//Back of the inventory
	draw_set_alpha(1);
	draw_sprite(sInventoryBackdrop, 0, CameraX(), CameraMiddleY()-50);
	
	//Draw items in the inventory
	for(var i = 0; i < ds_grid_width(myItems); i++){

		var itemX = CameraX() + 64 + (i * itemSeperation);
		var itemY = CameraY() + 58;
		var sprite = myItems[# i, Item.Sprite];
		
		//Check for additional rows needed 
		//Need to rework the if statement to advance the rows beyond 2
		if (i >= menuWidth && i < menuWidth * 2) {
			itemX = CameraX() + 64 + ((i - menuWidth) * itemSeperation);
			itemY = CameraY() + 67;
		}
		
		draw_sprite_ext(sprite, 0, itemX, itemY, itemScale, itemScale, 0, c_white, 1);
		
		//Check if mouse is hovering over an item
		if (point_in_rectangle(mouse_x, mouse_y, itemX - 1, itemY - 1, itemX + 7, itemY + 7)){
			draw_set_alpha(0.25);
			draw_set_color(c_blue);
			draw_rectangle(itemX - 1, itemY - 1, itemX + 7, itemY + 7, false);
			draw_set_alpha(1);
			
			//Draw item info
			if(instance_exists(myItems[# i, Item.Object]) == false){
				//layer_create(200, "MenuItems");
				currentItem = instance_create_layer(100, 100, "MenuItems", myItems[# i, Item.Object]);
				currentItem.price = myItems[# i, Item.Price];
				currentItem.type = myItems[# i, Item.Type];
				currentItem.name = myItems[# i, Item.Name];
				currentItem.isInMenu = true;
				if(showingDescription) {
					currentItem.isShowingInfo = true;
				}
			}
			
			//Clicked on an item
			if(mouse_check_button_pressed(mb_left) && showingDescription == false) {
				sequence = layer_sequence_create("Spawns", CameraMiddleX() - 70, CameraMiddleY() + 9, sqDescriptionAnimation);
			}
		
		}
	}
	if (point_in_rectangle(mouse_x, mouse_y, CameraX() + 196, CameraY() + 43, CameraX() + 200, CameraY() + 48) == true){
		if(mouse_check_button_pressed(mb_left)) {
			layer_sequence_headdir(sequence, seqdir_left);
			layer_sequence_play(sequence);
			showingDescription = false;
		}
	}
	
	//Ensure only 1 item exists at a time
	if (instance_number(oItemParent) > 1){
		instance_destroy(oItemParent);
	}
	//draw_rectangle(CameraX() + 196, CameraY() + 43, CameraX() + 200, CameraY() + 48, false);	
	
	//Front of the inventory
	draw_sprite(sInventoryOutline, 0, CameraX(), CameraMiddleY()-50);
	

}

