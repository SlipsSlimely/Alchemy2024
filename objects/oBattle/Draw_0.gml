/// @description Insert description here

//draw background art
draw_sprite(battleBackground,0,x,y);
draw_sprite(battleForeground,0,x,y);

//draw units in depth order
var _unitWithCurrentTurn = unitTurnOrder[turn].id;
for (var i = 0; i < array_length(unitRenderOrder); i++)
{
	with (unitRenderOrder[i])
	{
		draw_self();	
	}
}

//draw ui boxes
draw_sprite_stretched(Sprite_Menu,0,x+75,y+145,245,30);
draw_sprite_stretched(Sprite_Menu,0,x,y+145,74,30);


//Positions
#macro COLUMN_ENEMY 15
#macro COLUMN_NAME 90
#macro COLUMN_HP 160
//#macro COLUMN_MP 220 currently unused

//Draw headings
draw_set_font(global.font_main);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_ltgray);
draw_text(x+COLUMN_ENEMY,y+145,"ENEMY");
draw_text(x+COLUMN_NAME,y+145,"NAME");
draw_text(x+COLUMN_HP,y+145,"HP");
//draw_text(x+COLUMN_MP,y+120,"MP"); currently unused

//Draw enemy names
draw_set_font(global.font_main);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
var _drawLimit = 3;
var _drawn = 0;
for (var i = 0; (i < array_length(enemyUnits)) && (_drawn < _drawLimit); i++)
{
	var _char = enemyUnits[i];
	if (_char.hp > 0)
	{
		_drawn++;
		draw_set_halign(fa_left);
		draw_set_color(c_white);
		if (_char.id = _unitWithCurrentTurn) draw_set_color(c_yellow);
		draw_text(x+COLUMN_ENEMY,y+155+ (i*12),_char.name);
	}
}

//Draw party info
for (var i = 0; i < array_length(partyUnits); i++)
{
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	var _char = partyUnits[i];
	if (_char.id == _unitWithCurrentTurn) draw_set_color(c_yellow);
	if (_char.hp <= 0) draw_set_color(c_red);
	draw_text(x+COLUMN_NAME,y+155+(i*12),_char.name);
	draw_set_halign(fa_right);
	
	draw_set_color(c_white);
	if(_char.hp <(_char.hpMax * 0.5)) draw_set_color(c_orange);
	if(_char.hp <= 0) draw_set_color(c_red);
	draw_text(x+COLUMN_HP+50,y+155+(i*12),string(_char.hp) + "/" + string(_char.hpMax));
	
	//draw_set_color(c_white);  currently unused
	//if(_char.mp <(_char.mpMax * 0.5)) draw_set_color(c_orange);
	//if(_char.hp <= 0) draw_set_color(c_red);
	//draw_text(x+COLUMN_HP+50,y+130+(i*12),string(_char.mp) + "/" + string(_char.mpMax));
	
	draw_set_color(c_white);
}

//Draw target cursor
if (cursor.active)
{
	with (cursor)
	{
		if (activeTarget != noone)
		{
			if (!is_array(activeTarget))
			{
				draw_sprite(sPointer,0,activeTarget.x,activeTarget.y);
			}
			else
			{
				draw_set_alpha(sin(get_timer()/50000)+1);
				for (var i = 0; i < array_length(activeTarget); i++)
				{
					draw_sprite(sPointer,0,activeTarget[i].x,activeTarget[i].y);
				}
				draw_set_alpha(1.0);
			}
		}
	}
}

//draw battle text
if (battleText != "")
{
	var _w = string_width(battleText)+20;
	draw_sprite_stretched(Sprite_Menu,0,x+160-(_w*0.5),y+5,_w,25);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(x+160,y+10,battleText);
}


