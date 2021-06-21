var type = getPlayerInputType();

if (type < 3)
{
	exit;
}

var slot = type - 3;

if (gamepad_button_check_pressed(slot, gp_padu))
{
	MoveGrid(oGridMoveStatus.x, oGridMoveStatus.y - GridSize);
}
else if (gamepad_button_check_pressed(slot, gp_padl))
{
	MoveGrid(oGridMoveStatus.x - GridSize, oGridMoveStatus.y);
}
else if (gamepad_button_check_pressed(slot, gp_padd))
{
	MoveGrid(oGridMoveStatus.x, oGridMoveStatus.y + GridSize);
}
else if (gamepad_button_check_pressed(slot, gp_padr))
{
	MoveGrid(oGridMoveStatus.x + GridSize, oGridMoveStatus.y);
}
else if (gamepad_button_check_pressed(slot,gp_face1))
{
	if(oGridMoveStatus.player != noone)
	{
		AttackPlayer(oGridMoveStatus.player);
	}
	else if(oGridMoveStatus.tower != noone)
	{
		AttackTower(oGridMoveStatus.tower);
	}
	else
	{
		MovePlayer(oGridMoveStatus.grid);
	}
}
else if (gamepad_button_check_pressed(slot,gp_face2))
{
	BuildTower(oGridMoveStatus.grid);
}
else if (gamepad_button_check_pressed(slot, gp_shoulderl))
{
	RollDice();
}