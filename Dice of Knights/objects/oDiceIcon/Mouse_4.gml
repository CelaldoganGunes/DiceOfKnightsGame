if (global.isRolled = false)
{
	global.isRolled = true;
	global.moveCount = choose(1,2,2,3,4,5);
	
	var player = getPlayer();
	player.playerTower += 1;
	player.playerSword += 1;
}
else
{
	global.moveCount = 0;
	changeTurn();
}