/// @description Insert description here

y -= 3;

image_alpha = lerp(image_alpha, 0, 0.02);

if(image_alpha <= 0.1) {
	instance_destroy();
}