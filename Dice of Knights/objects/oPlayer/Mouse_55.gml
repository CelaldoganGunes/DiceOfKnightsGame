/// @description Use Magic

if (instance_exists(oSeqManager))
{
	exit;
}

if (GetPlayer() != id)
{
	exit;
}

var type = GetPlayerInputType();

if (type = PlayerInputTypes.mouse)
{
	UseMagic(id);
}