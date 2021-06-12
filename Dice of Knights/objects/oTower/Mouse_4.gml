/// @description Tower Destroy

if (global.moveCount < 1)
{
	exit;
}

var player = getPlayer();

if (point_distance(player.x,player.y,x,y) != 128)
{
	exit;
}

if (player.playerSword < 1)
{
	exit;
}

instance_destroy();

global.moveCount -= 1;
player.playerSword -= 1;
changeTurn();