/// @description Use Magic

if (instance_exists(oSeqManager))
{
	exit;
}

if (getPlayer() != id)
{
	exit;
}

var type = getPlayerInputType();

if (type = PlayerInputTypes.mouse)
{
	useMagic(id);
}