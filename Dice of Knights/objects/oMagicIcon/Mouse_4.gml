var type = getPlayerInputType();

if (type = PlayerInputTypes.mouse)
{
	if (image_index + 1 = image_number)
	{
		image_index = 0;
	}
	else
	{
		image_index += 1;
	}
}

