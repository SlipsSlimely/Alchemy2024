/// @description Insert description here
if place_meeting(x, y, Object_Player) && !instance_exists(Object_Warp)
	{
	var inst = instance_create_depth(0, 0, -9999, Object_Warp);
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_rm = target_rm;
	}
