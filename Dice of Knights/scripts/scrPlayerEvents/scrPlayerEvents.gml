function MovePlayer(grid)
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

	player.x = grid.x;
	player.y = grid.y;
	global.moveCount -= 1;

	changeTurn();	
}

function AttackPlayer(defenderPlayer)
{
	if (global.moveCount < 1)
	{
		exit;
	}

	var attackerPlayer = getPlayer();

	if (point_distance(attackerPlayer.x,attackerPlayer.y,defenderPlayer.x,defenderPlayer.y) != 128)
	{
		exit;
	}

	if (attackerPlayer.playerSword < 1)
	{
		exit;
	}

	var attackerDice = choose(1,2,2,3,4,5);
	var defenderDice = choose(1,2,2,3,4,5);

	if (attackerDice > defenderDice)
	{
		defenderPlayer.playerHeart -= 1;
	
		if(defenderPlayer.playerHeart < 1)
		{
			instance_destroy(defenderPlayer);
		}
	}

	global.moveCount -= 1;
	attackerPlayer.playerSword -= 1;

	if(attackerPlayer.playerSword < 1)
	{
		oGridMoveStatus.image_index = 1;
	}

	changeTurn();
}

