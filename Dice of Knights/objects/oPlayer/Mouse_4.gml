/// @description Battle System

if (instance_exists(oSeqManager))
{
	exit;
}

var type = getPlayerInputType();

if (type = PlayerInputTypes.mouse)
{
	AttackPlayer(id);
}
