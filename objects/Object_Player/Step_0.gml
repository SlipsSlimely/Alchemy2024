/// @description This runs every frame of the game
var right_key = keyboard_check(vk_right);
var left_key = keyboard_check(vk_left);
var up_key = keyboard_check(vk_up);
var down_key = keyboard_check(vk_down);

x_speed = (right_key - left_key) * move_speed;
y_speed = (down_key - up_key) * move_speed;

//Collisions
if place_meeting(x + x_speed, y, Object_Wall) == true
	{
		x_speed = 0;
	}
if place_meeting(x, y + y_speed, Object_Wall) == true
	{
		y_speed = 0;
	}
	
	
//Changing the animations based on direction	
if (x_speed > 0 || x_speed < 0)
{
	sprite_index = sPCFrontWalk;
}
else
{
	sprite_index = sPCFront;
}

x += x_speed;
y += y_speed; 