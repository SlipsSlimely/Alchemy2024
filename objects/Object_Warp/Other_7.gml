/// @description This triggers at the end of the animation and reverses it
	room_goto(target_rm);
	Object_Player.x = target_x;
	Object_Player.y = target_y;
	
	image_speed = -1;
