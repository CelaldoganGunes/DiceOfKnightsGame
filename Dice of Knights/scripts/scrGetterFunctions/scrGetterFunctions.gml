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

function getFightSequence(player)
{
	if(player.playerID = 0)
	{
		return seqPlayer1Fight;
	}
	else if(player.playerID = 1)
	{
		return seqPlayer2Fight;
	}
	else if(player.playerID = 2)
	{
		return seqPlayer3Fight;
	}
	else if(player.playerID = 3)
	{
		return seqPlayer4Fight;
	}
}


function getDiceSequence(number)
{
	if(number = 1)
	{
		return seqDice1;
	}
	else if(number = 2)
	{
		return seqDice2;
	}
	else if(number = 3)
	{
		return seqDice3;
	}
	else if(number = 4)
	{
		return seqDice4;
	}	
	else if(number = 5)
	{
		return seqDice5;
	}	
}




