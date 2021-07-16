function getPlayer()
{
	return global.playerList[global.turn];
}

function getPlayerInputType()
{
	var player = global.playerList[global.turn];
	
	return player.playerInput;
}

function getMagic()
{
	var magic = oMagicIcon.magicList[oMagicIcon.image_index]
	return magic;
}