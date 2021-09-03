if (toVanish < 4)
{
	toVanish -= 1;
	image_alpha -= 0.25;

	if (toVanish < 1)
	{
		instance_destroy();
		if (player != noone)
		{
			instance_destroy(player);
			FinishGame();
			ChangeTurn();
		}
	}
}