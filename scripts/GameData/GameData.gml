// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.actionLibrary =
{
	tackle:
	{
		name: "Tackle",
		description: "{0} hits with a tackle!",
		subMenu: -1,
		targetRequired: true,
		targetEnemyByDefault: true,
		targetAll: MODE.NEVER,
		userAnimation: "attack",
		effectSprite: sScratch,
		effectOnTarget: MODE.ALWAYS,
		func: function(_user, _targets)
		{
			var _damage = ceil(_user.attack + random_range(-_user.attack * 0.25, _user.attack * 0.25));
			var _damageActual = _damage - _targets[0].defense;
			if (_damageActual <= 0)
			{
				_damageActual = 1;
			}
			BattleChangeHP(_targets[0], -_damageActual, 0);
		}
	},
	scratch:
	{
		name: "Scratch",
		description: "{0} uses a scratching attack!",
		subMenu: -1,
		targetRequired: true,
		targetEnemyByDefault: true,
		targetAll: MODE.NEVER,
		userAnimation: "attack",
		effectSprite: sScratch,
		effectOnTarget: MODE.ALWAYS,
		func: function(_user, _targets)
		{
			var _damage = ceil(_user.attack + random_range(-_user.attack * 0.25, _user.attack * 0.25));
			var _damageActual = _damage - _targets[0].defense;
			if (_damageActual <= 0)
			{
				_damageActual = 1;
			}
			BattleChangeHP(_targets[0], -_damageActual, 0);
		}
	},
	bite:
	{
		name: "Bite",
		description: "{0} bites!",
		subMenu: -1,
		targetRequired: true,
		targetEnemyByDefault: true,
		targetAll: MODE.NEVER,
		userAnimation: "attack",
		effectSprite: sScratch,
		effectOnTarget: MODE.ALWAYS,
		func: function(_user, _targets)
		{
			var _damage = ceil(_user.attack + random_range(-_user.attack * 0.5, _user.attack * 0.5));
			var _damageActual = _damage - _targets[0].defense;
			if (_damageActual <= 0)
			{
				_damageActual = 1;
			}
			BattleChangeHP(_targets[0], -_damageActual, 0);
		}
	},
	bonk:
	{
		name: "Bonk",
		description: "{0} hits with a club!",
		subMenu: -1,
		targetRequired: true,
		targetEnemyByDefault: true,
		targetAll: MODE.NEVER,
		userAnimation: "attack",
		effectSprite: sScratch,
		effectOnTarget: MODE.ALWAYS,
		func: function(_user, _targets)
		{
			var _damage = ceil(_user.attack + random_range(-_user.attack * 0.25, _user.attack * 0.75));
			var _damageActual = _damage - _targets[0].defense;
			if (_damageActual <= 0)
			{
				_damageActual = 1;
			}
			BattleChangeHP(_targets[0], -_damageActual, 0);
		}
	},
	sludge:
	{
		name: "Sludge",
		description: "{0} throws some sludge!",
		subMenu: -1,
		targetRequired: true,
		targetEnemyByDefault: true,
		targetAll: MODE.NEVER,
		userAnimation: "attack",
		effectSprite: sScratch,
		effectOnTarget: MODE.ALWAYS,
		func: function(_user, _targets)
		{
			var _damage = ceil(_user.attack + random_range(-_user.attack * 0.15, _user.attack * 0.35));
			var _damageActual = _damage - _targets[0].defense;
			if (_damageActual <= 0)
			{
				_damageActual = 1;
			}
			BattleChangeHP(_targets[0], -_damageActual, 0);
		}
	},
	buzz:
	{
		name: "Buzz",
		description: "{0} buzzes it's wings!",
		subMenu: -1,
		targetRequired: true,
		targetEnemyByDefault: true,
		targetAll: MODE.NEVER,
		userAnimation: "attack",
		effectSprite: sScratch,
		effectOnTarget: MODE.ALWAYS,
		func: function(_user, _targets)
		{
			var _damage = ceil(_user.attack + random_range(-_user.attack * 0.10, _user.attack * 0.15));
			var _damageActual = _damage - _targets[0].defense;
			if (_damageActual <= 0)
			{
				_damageActual = 1;
			}
			BattleChangeHP(_targets[0], -_damageActual, 0);
		}
	},
	restrict:
	{
		name: "Restrict",
		description: "{0} wraps its prey!",
		subMenu: -1,
		targetRequired: true,
		targetEnemyByDefault: true,
		targetAll: MODE.NEVER,
		userAnimation: "attack",
		effectSprite: sScratch,
		effectOnTarget: MODE.ALWAYS,
		func: function(_user, _targets)
		{
			var _damage = ceil(_user.attack + random_range(-_user.attack * 0.25, _user.attack * 0.25));
			var _damageActual = _damage - _targets[0].defense;
			if (_damageActual <= 0)
			{
				_damageActual = 1;
			}
			BattleChangeHP(_targets[0], -_damageActual, 0);
		}
	},
	squeak:
	{
		name: "Squeak",
		description: "{0} squeaks loudly!",
		subMenu: -1,
		targetRequired: true,
		targetEnemyByDefault: true,
		targetAll: MODE.NEVER,
		userAnimation: "attack",
		effectSprite: sScratch,
		effectOnTarget: MODE.ALWAYS,
		func: function(_user, _targets)
		{
			var _damage = ceil(_user.attack + random_range(-_user.attack * 0.25, _user.attack * 0.25));
			var _damageActual = _damage - _targets[0].defense;
			if (_damageActual <= 0)
			{
				_damageActual = 1;
			}
			BattleChangeHP(_targets[0], -_damageActual, 0);
		}
	},
	webbing:
	{
		name: "Webbing",
		description: "{0} fires web at its target!",
		subMenu: -1,
		targetRequired: true,
		targetEnemyByDefault: true,
		targetAll: MODE.NEVER,
		userAnimation: "attack",
		effectSprite: sScratch,
		effectOnTarget: MODE.ALWAYS,
		func: function(_user, _targets)
		{
			var _damage = ceil(_user.attack + random_range(-_user.attack * 0.25, _user.attack * 0.25));
			var _damageActual = _damage - _targets[0].defense;
			if (_damageActual < 0)
			{
				_damageActual = 1;
			}
			BattleChangeHP(_targets[0], -_damageActual, 0);
		}
	}
}

enum MODE
{
	NEVER = 0,
	ALWAYS = 1,
	VARIES = 2
}

global.party = 
[
	
	{
		name: "The Abomination",
		hp: 10,
		hpMax: 10,
		attack: 2,
		defense: 2,
		rat: 0,
		wolf: 0,
		spider: 0,
		ooze: 0,
		snake: 0,
		cat: 0,
		human: 0,
		fly: 0,
		combined: 0,
		sprites : {idle: sHomunc,},
		actions : [global.actionLibrary.tackle]
	}

];

global.enemies =
{
	wolf:
	{
		name: "Wolf",
		hp: 10,
		hpMax: 10,
		attack: 3,
		defense: 1,
		sprites : {idle: sWolf3},
		actions: [global.actionLibrary.bite],
		//xpValue: 18,
		AIscript: function()
		{
			var _action = actions[0];
			//var _Target = global.party.name = "Player"; Gonna test if this works later
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return(_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return[_action, _target];
			
			
		}
	},
	
	rat:
	{
		name: "Rat",
		hp: 8,
		hpMax: 8,
		attack: 3,
		defense: 2,
		sprites : {idle: sRat3},
		actions: [global.actionLibrary.squeak],
		//xpValue: 18,
		AIscript: function()
		{
			var _action = actions[0];
			//var _Target = global.party.name = "Player"; Gonna test if this works later
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return(_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return[_action, _target];
			
			
		}
	},
	
	ooze:
	{
		name: "Ooze",
		hp: 10,
		hpMax: 10,
		attack: 1,
		defense: 3,
		sprites : {idle: sOoze3},
		actions: [global.actionLibrary.sludge],
		//xpValue: 18,
		AIscript: function()
		{
			var _action = actions[0];
			//var _Target = global.party.name = "Player"; Gonna test if this works later
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return(_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return[_action, _target];
			
			
		}
	},
		
	human:
	{
		name: "Human",
		hp: 10,
		hpMax: 10,
		attack: 2,
		defense: 2,
		sprites : {idle: sHuman3},
		actions: [global.actionLibrary.bonk],
		//xpValue: 18,
		AIscript: function()
		{
			var _action = actions[0];
			//var _Target = global.party.name = "Player"; Gonna test if this works later
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return(_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return[_action, _target];
			
			
		}
	},
	
	spider:
	{
		name: "Spider",
		hp: 6,
		hpMax: 6,
		attack: 3,
		defense: 2,
		sprites : {idle: sSpider3},
		actions: [global.actionLibrary.webbing],
		//xpValue: 18,
		AIscript: function()
		{
			var _action = actions[0];
			//var _Target = global.party.name = "Player"; Gonna test if this works later
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return(_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return[_action, _target];
			
			
		}
	},
	
	fly:
	{
		name: "Fly",
		hp: 6,
		hpMax: 6,
		attack: 1,
		defense: 2,
		sprites : {idle: sFly3},
		actions: [global.actionLibrary.buzz],
		//xpValue: 18,
		AIscript: function()
		{
			var _action = actions[0];
			//var _Target = global.party.name = "Player"; Gonna test if this works later
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return(_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return[_action, _target];
			
			
		}
	},
	
	cat:
	{
		name: "Cat",
		hp: 10,
		hpMax: 10,
		attack: 1,
		defense: 3,
		sprites : {idle: sCat3},
		actions: [global.actionLibrary.scratch],
		//xpValue: 18,
		AIscript: function()
		{
			var _action = actions[0];
			//var _Target = global.party.name = "Player"; Gonna test if this works later
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return(_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return[_action, _target];
			
			
		}
	},
	
	snake:
	{
		name: "Snake",
		hp: 12,
		hpMax: 12,
		attack: 2,
		defense: 1,
		sprites : {idle: sSnake3},
		actions: [global.actionLibrary.restrict],
		//xpValue: 18,
		AIscript: function()
		{
			var _action = actions[0];
			//var _Target = global.party.name = "Player"; Gonna test if this works later
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return(_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return[_action, _target];
			
			
		}
	},
	
	amalgam:
	{
		name: "Amalgamation",
		hp: 12,
		hpMax: 12,
		attack: 4,
		defense: 4,
		sprites : {idle: sAmalgam},
		actions: [global.actionLibrary.tackle, global.actionLibrary.buzz, global.actionLibrary.scratch],
		//xpValue: 18,
		AIscript: function()
		{
			attack = irandom(2);
			var _action = actions[attack];
			//var _Target = global.party.name = "Player"; Gonna test if this works later
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return(_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return[_action, _target];
			
			
		}
	}
	
}