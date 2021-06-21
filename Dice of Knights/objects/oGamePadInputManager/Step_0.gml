var type = getPlayerInputType();

if (type = PlayerInputs.mouse)
{
	exit;
}

if (type = PlayerInputs.keyboard)
{
	exit;
}

var slot = type - 3;
var gX = oGridMoveStatus.x;
var gY = oGridMoveStatus.y;

if (gamepad_button_check_pressed(slot,gp_padu))
{
	MoveStatusSquare(gX, gY - GridSize);
}
else if (gamepad_button_check_pressed(slot,gp_padl))
{
	MoveStatusSquare(gX - GridSize, gY);	
}
else if (gamepad_button_check_pressed(slot,gp_padd))
{
	MoveStatusSquare(gX, gY + GridSize);	
}
else if (gamepad_button_check_pressed(slot,gp_padr))
{
	MoveStatusSquare(gX + GridSize, gY);	
}
else if (gamepad_button_check_pressed(slot,gp_shoulderl))
{
	RollDice();
}
else if (gamepad_button_check_pressed(slot,gp_face2))
{
	var grid = noone;
	with(oGrid)
	{
		if(x = gX and y = gY)
		{
			grid = id;
			BuildTower(grid);
		}
	}
}
else if (gamepad_button_check_pressed(slot,gp_face1))
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