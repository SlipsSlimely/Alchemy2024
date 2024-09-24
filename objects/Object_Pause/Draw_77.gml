/// @description This is what happens when the game is paused

//gpu_set_blendenable(false);

//this happens when the game is paused
//if (pause)
//{
	
	//surface_set_target(application_surface);
	//	if(surface_exists(pauseSurf))
	//	{ 
	//	draw_surface(pauseSurf,0,0);
	//	//draw_set_alpha(0.5);
	//	draw_rectangle_color(0,0,resW,resH, c_black,c_black,c_black,c_black,false);
	//	draw_set_halign(fa_center);
	//	draw_set_font(global.font_main);
	//	draw_set_color(c_white);
	//	draw_text(256,124,"Game Paused");
	//	draw_text(256,134,"Press P to Unpause");
	//	draw_text(256,144,"Press J to open your Journal");
	//	draw_text(256,154,"Press ESC to Quit");
	//	draw_set_color(c_black);
	//	}
	//	else
	//	{
	//		pauseSurf = surface_create(resW,resH);
	//		buffer_set_surface(pauseSurfBuffer,pauseSurf,0);
	//	}
	//surface_reset_target();
//}

if(keyboard_check_pressed(ord("P")))
{
	if(!pause)
	{
		pause = true;
		
		instance_deactivate_all(true);
		instance_create_layer(127,31, "Instances", Object_PauseMenu);

		//instance_create_layer(view_xview + view_wview/2,view_yview + view_hview/2, "Instances", Object_PauseMenu);
		//pauseSurf = surface_create(resW,resH);
		//surface_set_target(pauseSurf);
		//	draw_surface(application_surface,0,0);
		//surface_reset_target();
		
		//if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		//pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
		//buffer_get_surface(pauseSurfBuffer,pauseSurf,0);
		
	}
	else
	{
		
	}
}

//gpu_set_blendenable(true);
