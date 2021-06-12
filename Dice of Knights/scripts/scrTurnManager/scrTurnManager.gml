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
}