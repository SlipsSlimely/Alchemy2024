/// @description Insert description here
draw_set_font(global.font_main);


for (var i = 0; i < array_length(inv); i ++)
{
	var _xx = camera_get_view_x(view_camera[0]) + 16;
	var _yy = camera_get_view_y(view_camera[0]) + 16;
	var _sep = 16;
	
	draw_sprite(inv[i].sprite, 0, _xx, _yy + _sep*i);
	draw_text (_xx + 16, _yy + _sep*i, inv[i].name);
	

}