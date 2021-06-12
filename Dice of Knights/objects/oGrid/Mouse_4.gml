/// @description Movement

if (global.moveCount < 1)
{
	exit;
}

var player = getPlayer();

if (point_distance(player.x,player.y,x,y) != 128)
{
	exit;
}

if (place_meeting(x,y,oPlayer))
{
	exit;
}

if (place_meeting(x,y,oTower))
{
	exit;
}

player.x = x;
player.y = y;
global.moveCount -= 1;

changeTurn();