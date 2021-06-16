if (global.moveCount < 1)
{
	oGridMoveStatus.visible = false;
	exit;
}

oGridMoveStatus.x = x;
oGridMoveStatus.y = y;

var player = getPlayer();

if(x = player.x and y = player.y)
{
	oGridMoveStatus.visible = false;
	exit;
}

oGridMoveStatus.visible = true;

if (point_distance(player.x,player.y,x,y) != 128)
{

	oGridMoveStatus.image_index = 1;
	exit;
}

if (place_meeting(x,y,oPlayer))
{
	if(player.playerSword < 1)
	{
		oGridMoveStatus.image_index = 1;
		exit;
	}
}

if (place_meeting(x,y,oTower))
{
	if(player.playerSword < 1)
	{
		oGridMoveStatus.image_index = 1;
		exit;
	}
}

oGridMoveStatus.image_index = 0;