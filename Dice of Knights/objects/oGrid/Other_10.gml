toVanish -= 1;
image_alpha -= 0.25;

if (toVanish < 1)
{
	instance_destroy();
}