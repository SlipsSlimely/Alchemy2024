//This is set up to call a bunch of common camera calls to save time typing


function CameraX(){
	return camera_get_view_x(view_camera[0]);
}

function CameraY(){
	return camera_get_view_y(view_camera[0]);
}

function CameraMiddleX(){
	return CameraX() + camera_get_view_width(view_camera[0]) / 2;
}


function CameraMiddleY(){
	return CameraY() + camera_get_view_height(view_camera[0]) / 2;
}