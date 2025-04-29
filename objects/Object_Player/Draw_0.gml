/// @description This draws the players inventory
if (isShowingMenu) {
	//Pause the game
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_rectangle(0, 0, room_width, room_height, false);
	
	//Back of the inventory
	draw_set_alpha(1);
	draw_sprite(sInventoryBackdrop, 0, CameraX() + 175, CameraMiddleY());
	
	//Front of the inventory
	draw_sprite(sInventoryOutline, 0, CameraX() + 175, CameraMiddleY() + 20);
}

