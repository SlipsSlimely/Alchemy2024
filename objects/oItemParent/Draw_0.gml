/// @description Draw Info
draw_self();


//Info for when displaying description sprite
if(isShowingInfo == true){
	
}
if (isInMenu == true){
	//Price
	draw_set_color(c_orange);
	draw_set_font(global.font_main);
	draw_text_ext(CameraX() + 55, CameraY() + 390, name + " is worth " + string(price) + " gold each.",
	font_get_size(global.font_main) * 1.5, sprite_get_width(sInventoryOutline) - 20);
}