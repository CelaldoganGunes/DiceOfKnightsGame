function createMagic(_n, _s, _t, _e) constructor
{
	magicName = _n;
	sword = _s;
	tower = _t;
	elixir = _e;
	whoUsedThisMagic = ds_list_create();
}

function changeMagic()
{
	with(oMagicIcon)
	{
		if (image_index + 1 = image_number)
		{
			image_index = 0;
		}
		else
		{
			image_index += 1;
		}
	}
}

function checkMagicRecipe(magician)
{
	var magic = getMagic();
	
	if (magician.playerSword < magic.sword)
	{
		return 0;
	}
	else if (magician.playerTower < magic.tower)
	{
		return 0;
	}
	else if (magician.playerElixir < magic.elixir)
	{
		return 0;
	}
	else
	{
		return 1;
	}
}

function useMagic(magician)
{
	var magic = getMagic();
	
	if(ds_list_find_index(magic.whoUsedThisMagic,magician) != -1)
	{
		exit;
	}	
	
	if (global.moveCount < 1)
	{
		exit;
	}	
	
	if(checkMagicRecipe(magician) = 0)
	{
		exit;
	}
	
	if(magic.magicName = "Teleport")
	{
		magicTeleport(magician);
	}
	else if(magic.magicName = "Earthquake")
	{
		magicEarthquake(magician);
	}
	else if(magic.magicName = "Heart")
	{
		magicHeart(magician);
	}
}

function magicTeleport(magician)
{
	if (oGridMoveStatus.tower != noone or oGridMoveStatus.player != noone)
	{
		exit;
	}

	var magic = getMagic();
	
	magician.playerSword -= magic.sword;
	magician.playerTower -= magic.tower;
	magician.playerElixir -= magic.elixir;

	var grid = oGridMoveStatus.grid;
	magician.x = grid.x;
	magician.y = grid.y;
	global.moveCount -= 1;
	ds_list_add(magic.whoUsedThisMagic,magician);
	changeTurn();
}

function magicEarthquake(magician)
{
	if (oGridMoveStatus.tower != noone or oGridMoveStatus.player != noone)
	{
		exit;
	}

	var magic = getMagic();

	magician.playerSword -= magic.sword;
	magician.playerTower -= magic.tower;
	magician.playerElixir -= magic.elixir;
	
	var grid = oGridMoveStatus.grid;
	instance_destroy(grid);
	global.moveCount -= 1;
	ds_list_add(magic.whoUsedThisMagic,magician);
	changeTurn();
}

function magicHeart(magician)
{
	if (oGridMoveStatus.player = noone)
	{
		exit;
	}

	var magic = getMagic();
	
	magician.playerSword -= magic.sword;
	magician.playerTower -= magic.tower;
	magician.playerElixir -= magic.elixir;
	
	var player = oGridMoveStatus.player;
	player.playerHeart += 1;
	global.moveCount -= 1;
	ds_list_add(magic.whoUsedThisMagic,magician);
	changeTurn();
}