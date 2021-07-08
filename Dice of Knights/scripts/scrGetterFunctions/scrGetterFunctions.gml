function getPlayer()
{
	return global.playerList[global.turn];
}

function getPlayerInputType()
{
	var player = global.playerList[global.turn];
	
	return player.playerInput;
}

function createMagic(_n, _s, _t, _e) constructor
{
	magicName = _n;
	sword = _s;
	tower = _t;
	elixir = _e;
}