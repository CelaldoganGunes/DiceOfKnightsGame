/// @description Tower Build

if (global.moveCount < 1)
{
	exit;
}

var player = getPlayer();

if (point_distance(player.x,player.y,x,y) != 128)
{
	exit;
}

if (player.playerTower < 1)
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

var tower = instance_create_layer(x,y,"Tower",oTower);
tower.image_index = player.playerID;

global.moveCount -= 1;
player.playerTower -= 1;

if(player.playerSword < 1)
{
	oGridMoveStatus.image_index = 1;
}
	
changeTurn();