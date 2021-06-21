function RollDice()
{
	if (global.isRolled = false)
	{
		global.isRolled = true;
		global.moveCount = choose(1,2,2,3,4,5);
	
		var player = getPlayer();
		player.playerTower += 10;
		player.playerSword += 10;
		oGridMoveStatus.visible = true;
		oGridMoveStatus.image_index = 1;
		oGridMoveStatus.x = player.x;
		oGridMoveStatus.y = player.y;
	}
	else
	{
		global.moveCount = 0;
		changeTurn();
	}
}

function changeTurn()
{
	if (global.moveCount > 0)
	{
		exit;
	}
	
	global.moveCount = 0;
	global.isRolled = false;
	
	
	
	if ((global.turn + 1) =  global.playerSlot)
	{
		global.turn = 0;
	}
	else
	{
		global.turn += 1;
	}
	
	if(!instance_exists(global.playerList[global.turn]))
	{
		changeTurn();
		exit;
	}
	
	var player = getPlayer();
	oGridMoveStatus.x = player.x;
	oGridMoveStatus.y = player.y;
	oGridMoveStatus.visible = false;
}