function createMagic(_n, _s, _t, _e) constructor
{
	magicName = _n;
	sword = _s;
	tower = _t;
	elixir = _e;
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
	var grid = oGridMoveStatus.grid;
	var player = oGridMoveStatus.player;
	var tower = oGridMoveStatus.tower;
	
	var magic = getMagic();
	
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
}