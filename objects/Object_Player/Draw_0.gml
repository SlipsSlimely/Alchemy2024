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
		//box is currently off by 3 pixels
		if (point_in_rectangle(mouse_x, mouse_y, itemX - 4, itemY - 4, itemX + 4, itemY + 4)){
			draw_set_alpha(0.25);
			draw_set_color(c_blue);
			draw_rectangle(itemX - 4, itemY - 4, itemX + 4, itemY + 4, false);
			draw_set_alpha(1);
		}
	}
	
	//Front of the inventory
	draw_sprite(sInventoryOutline, 0, CameraX(), CameraMiddleY()-50);
	

}

