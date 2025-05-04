/// @description This draws the players inventory
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
	}
	
	//Front of the inventory
	draw_sprite(sInventoryOutline, 0, CameraX(), CameraMiddleY()-50);
	

}

