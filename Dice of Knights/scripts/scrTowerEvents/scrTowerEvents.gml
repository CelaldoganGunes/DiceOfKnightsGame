function BuildTower(grid)
{
	if (global.moveCount < 1)
	{
		exit;
	}

	var player = getPlayer();

	if (point_distance(player.x,player.y,grid.x,grid.y) != 128)
	{
		exit;
	}

	if (player.playerTower < 1)
	{
		exit;
	}
	
	with(grid)
	{
		if (place_meeting(grid.x,grid.y,oPlayer))
		{
			exit;
		}

		if (place_meeting(grid.x,grid.y,oTower))
		{
			exit;
		}
	}
	var tower = instance_create_layer(grid.x,grid.y,"Tower",oTower);
	tower.image_index = player.playerID;

	global.moveCount -= 1;
	player.playerTower -= 1;

	if(player.playerSword < 1)
	{
		oGridMoveStatus.image_index = 1;
	}
	
	changeTurn();
}

function AttackTower(tower)
{
	if (global.moveCount < 1)
	{
		exit;
	}

	var player = getPlayer();

	if (point_distance(player.x,player.y,tower.x,tower.y) != 128)
	{
		exit;
	}

	if (player.playerSword < 1)
	{
		exit;
	}

	instance_destroy(tower);

	global.moveCount -= 1;
	player.playerSword -= 1;

	if(player.playerSword < 1)
	{
		oGridMoveStatus.image_index = 1;
	}

	changeTurn();
}