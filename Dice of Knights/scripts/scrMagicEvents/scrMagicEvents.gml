function CreateMagic(_n, _s, _t, _e) constructor
{
	magicName = _n;
	sword = _s;
	tower = _t;
	elixir = _e;
	whoUsedThisMagic = ds_list_create();
}

function ChangeMagic()
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

function CheckMagicRecipe(magician)
{
	var magic = GetMagic();
	
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

function UseMagic(magician)
{
	var magic = GetMagic();
	
	if(ds_list_find_index(magic.whoUsedThisMagic,magician) != -1)
	{
		exit;
	}	
	
	if (global.moveCount < 1)
	{
		exit;
	}	
	
	if(CheckMagicRecipe(magician) = 0)
	{
		exit;
	}
	
	if(magic.magicName = "Teleport")
	{
		MagicTeleport(magician);
	}
	else if(magic.magicName = "Earthquake")
	{
		MagicEarthquake(magician);
	}
	else if(magic.magicName = "Heart")
	{
		MagicHeart(magician);
	}
}

function MagicTeleport(magician)
{
	if (oGridMoveStatus.tower != noone or oGridMoveStatus.player != noone)
	{
		exit;
	}

	var magic = GetMagic();
	
	magician.playerSword -= magic.sword;
	magician.playerTower -= magic.tower;
	magician.playerElixir -= magic.elixir;

	var grid = oGridMoveStatus.grid;
	magician.x = grid.x;
	magician.y = grid.y;
	global.moveCount -= 1;
	ds_list_add(magic.whoUsedThisMagic,magician);
	ChangeTurn();
}

function MagicEarthquake(magician)
{
	if (oGridMoveStatus.tower != noone or oGridMoveStatus.player != noone)
	{
		exit;
	}

	var magic = GetMagic();

	magician.playerSword -= magic.sword;
	magician.playerTower -= magic.tower;
	magician.playerElixir -= magic.elixir;
	
	var grid = oGridMoveStatus.grid;
	instance_destroy(grid);
	global.moveCount -= 1;
	ds_list_add(magic.whoUsedThisMagic,magician);
	ChangeTurn();
}

function MagicHeart(magician)
{
	if (oGridMoveStatus.player = noone)
	{
		exit;
	}
	
	var player = oGridMoveStatus.player;
	
	if (player.playerHeart < 1 or player.playerHeart > 2)
	{
		exit;
	}
	
	var magic = GetMagic();
	
	magician.playerSword -= magic.sword;
	magician.playerTower -= magic.tower;
	magician.playerElixir -= magic.elixir;
	
	player.playerHeart = 3;
	global.moveCount -= 1;
	ds_list_add(magic.whoUsedThisMagic,magician);
	ChangeTurn();
}