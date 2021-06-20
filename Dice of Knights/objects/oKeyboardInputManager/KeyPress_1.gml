var type = getPlayerInputType();

if (type != PlayerInputs.keyboard)
{
	exit;
}

var gX = oGridMoveStatus.x;
var gY = oGridMoveStatus.y;

if (keyboard_key = ord("W"))
{
	MoveStatusSquare(gX, gY - GridSize);
}
else if (keyboard_key = ord("A"))
{
	MoveStatusSquare(gX - GridSize, gY);	
}
else if (keyboard_key = ord("S"))
{
	MoveStatusSquare(gX, gY + GridSize);	
}
else if (keyboard_key = ord("D"))
{
	MoveStatusSquare(gX + GridSize, gY);	
}
else if (keyboard_key = ord("E"))
{
	var grid = noone;
	with(oGrid)
	{
		if(x = gX and y = gY)
		{
			grid = id;
		}
	}
	
	var player = noone;
	with(oPlayer)
	{
		if(x = gX and y = gY and id != getPlayer())
		{
			player = id;
		}
	}
	
	var tower = noone;
	with(oTower)
	{
		if(x = gX and y = gY)
		{
			tower = id;
		}	
	}
	
	if(tower != noone)
	{
		AttackTower(tower);
	}
	else if(player != noone)
	{
		AttackPlayer(player);
	}
	else if(grid != noone)
	{
		MovePlayer(grid);
	}
	
}
else if (keyboard_key = ord("T"))
{
	var grid = noone;
	with(oGrid)
	{
		if(x = gX and y = gY)
		{
			grid = id;
		}
	}
	
	if(grid != noone)
	{
		BuildTower(grid);
	}	
}
else if (keyboard_key = vk_space)
{
	RollDice();
}