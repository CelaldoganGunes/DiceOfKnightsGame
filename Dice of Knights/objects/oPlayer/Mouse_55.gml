/// @description Use Magic

if (getPlayer() != id)
{
	exit;
}

var type = getPlayerInputType();

if (type = PlayerInputTypes.mouse)
{
	useMagic(id);
}