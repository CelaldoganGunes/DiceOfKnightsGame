function getPlayer()
{
	return global.playerList[global.turn];
}

function getPlayerInputType()
{
	var player = global.playerList[global.turn];
	
	return player.playerInput;
}