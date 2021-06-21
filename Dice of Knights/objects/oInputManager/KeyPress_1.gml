var type = getPlayerInputType();

if (type != PlayerInputTypes.keyboard)
{
	exit;
}

if (keyboard_key = ord("W"))
{
	MoveGrid(oGridMoveStatus.x, oGridMoveStatus.y - GridSize);
}
else if (keyboard_key = ord("A"))
{
	MoveGrid(oGridMoveStatus.x - GridSize, oGridMoveStatus.y);
}
else if (keyboard_key = ord("S"))
{
	MoveGrid(oGridMoveStatus.x, oGridMoveStatus.y + GridSize);
}
else if (keyboard_key = ord("D"))
{
	MoveGrid(oGridMoveStatus.x + GridSize, oGridMoveStatus.y);
}
else if (keyboard_key = ord("E"))
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
else if (keyboard_key = ord("T"))
{
	BuildTower(oGridMoveStatus.grid);
}
else if (keyboard_key = vk_space)
{
	RollDice();
}