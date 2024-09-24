// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Menu(_x, _y, _options, _description = -1, _width = undefined, _height = undefined)
{
	with (instance_create_depth(_x, _y, -99999, oMenu))
	{
		options = _options;
		description = _description;
		var _optionsCount = array_length(_options);
		visibleOptionsMax = _optionsCount;
		
		//Set up size
		xmargin = 10;
		ymargin = 8;
		draw_set_font(global.font_main);
		heightLine = 12;

		
		//Auto width
		if (_width == undefined)
		{
			width = 1;
			if(description != -1) width = max(width, string_width(_description));
			for (var i = 0; i < _optionsCount; i++)
			{
				width = max(width, string_width(_options[i][0]));
			}
			widthFull = width + xmargin * 2;
		} else widthFull = _width;
		
		//Auto height
		if(_height == undefined)
		{
			height = heightLine * (_optionsCount + !(description == -1));
			heightFull = height + ymargin * 2;
		}
		else
		{
			heightFull = _height;
			//scrolling?
			if (heightLine * (_optionsCount + !(description == -1)) > _height - (ymargin * 2))
			{
				scrolling = true;
				visibleOptionsMax = (_height - ymargin * 2) div heightLine;
			}
		}
	}
}

function SubMenu(_options)
{
	//store old options in array and increase submenu level
	optionsAbove[subMenuLevel] = options;
	subMenuLevel++;
	options = _options;
	hover = 0;
}

function MenuGoBack()
{
	subMenuLevel--;
	options = optionsAbove[subMenuLevel];
	hover = 0;
}

function MenuSelectAction(_user, _action)
{
	with (oMenu) active = false;
	
	//Activate the targetting cursor if needed, or simply begin the action
	with (oBattle) 
	{
		if(_action.targetRequired)
		{
			with (cursor)
			{	
				active = true;
				activeAction = _action;
				targetAll = _action.targetAll;
				if (targetAll == MODE.VARIES) targetAll = true; //"togle" starts as true by default
				activeUser = _user;
				
				//which side to target by default?
				if(_action.targetEnemyByDefault) //target enemy by default
				{
					targetIndex = 0;
					targetSide = oBattle.enemyUnits;
					activeTarget = oBattle.enemyUnits[targetIndex];
				}
				else //target self by default
				{
					targetSide = oBattle.partyUnits;
					activeTarget = activeUser;
					var _findSelf = function(_element)
					{
						return (_element == activeTarget)
					}
					targetIndex = array_find_index(oBattle.partyUnits, _findSelf);
				}
			}
		}
		else
		{
			//if no target needed, begin the action and end the menu
			BeginAction(_user,_action,-1);
			with (oMenu) instance_destroy();
		}
	}		
}