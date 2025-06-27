/// @description This sets up our pause menus appearance
display_set_gui_size(surface_get_width(application_surface), surface_get_height(application_surface));
//The following 3 lines of code darken the background while paused
draw_set_color(c_black);
draw_set_alpha(.75);
//draw_rectangle(0, 0, room_width, room_height, false);
draw_rectangle(0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false);
//Reset the alpha
draw_set_alpha(1);

// draw the options
draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

//dynamically get width and height of menu
var _new_w = 0;
for(var i = 0; i < op_length; i++)
	{
	var _op_w = string_width(option[menu_level, i]);
	_new_w = max(_new_w, _op_w);
	}
width = _new_w + op_border*2;
height = op_border*2 + string_height(option[0,0]) + (op_length-1)*op_space;


//x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2;
//y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2;

//center menu
//draw_set_halign(fa_center);
//draw_set_valign(fa_middle);
//x = view_xview[0]+view_wview[0]/2;
//y = view_yview[0]+view_hview[0]/2;
x = display_get_gui_width()/2;
y = display_get_gui_height()/2;
//x = view_wport[0]/2 - 38;
//y = view_hport[0]/2 - 40;

// draw the menu background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);



for(var i = 0; i < op_length; i++)
	{
	var _c = c_white;
	if pos == i {_c = c_yellow};
	draw_text_color(x+op_border, y+op_border + op_space*i, option[menu_level, i], _c, _c, _c, _c, 1);
	}