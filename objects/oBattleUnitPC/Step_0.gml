/// @description Insert description here
event_inherited();
if (hp <= 0)
{
	image_blend = c_red;
	image_alpha -= 0.01;
	//sprite_index = sprites.down; this could be re-added if we add in death animations 
}
else
{
	//if (sprite_index == sprites.down) sprite_index = sprites.idle;
	//same as above, only necesary if we add downed sprites, this brings them back to
	//idle if they are revived
}