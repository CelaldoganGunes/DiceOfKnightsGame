/// @description Battle System

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

var defender = 1//choose(1,2,2,3,4,5);
var attacker = 5//choose(1,2,2,3,4,5);

if (attacker > defender)
{
	playerHeart -= 1;
	
	if(playerHeart < 1)
	{
		instance_destroy();
	}
}



global.moveCount -= 1;
player.playerSword -= 1;
changeTurn();