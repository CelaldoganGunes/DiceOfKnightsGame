if (instance_exists(oSeqManager))
{
	exit;
}

var type = GetPlayerInputType();

if (type = PlayerInputTypes.mouse)
{
	BuildTower(id);
}
