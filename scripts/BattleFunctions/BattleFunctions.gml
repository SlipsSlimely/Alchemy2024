// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//below is the function read and used to create the encounter screen every time the player gets into an encounter
function NewEncounter(_enemies, _bg, _fg)
{	
	instance_create_depth
	(
		camera_get_view_x(view_camera[0]),
		camera_get_view_y(view_camera[0]),
		-9999,
		oBattle,
		{enemies: _enemies, creator: id, battleBackground: _bg, battleForeground: _fg}
	);

}

//below is the function used to update the game state in a battle as everyone's HP changes
function BattleChangeHP(_target, _amount, _AliveDeadOrEither =0)
{
	//_AliveDeadOrEither: 0 = alive only, 1 = dead only, 2 = any
	var _failed = false;
	if(_AliveDeadOrEither == 0) && (_target.hp <+ 0) _failed = true;
	if(_AliveDeadOrEither == 1) && (_target.hp > 0) _failed = true;
	
	var _col = c_white;
	if (_amount > 0) _col = c_lime;
	if (_failed)
	{
		_col = c_white;
		_amount = "failed";
	}
	instance_create_depth
	(
		_target.x,
		_target.y,
		_target.depth-1,
		oBattleFloatingText,
		{font: global.font_main, col: _col, text: string(_amount)}
	);
	if(!_failed) _target.hp = clamp(_target.hp + _amount, 0, _target.hpMax);
}