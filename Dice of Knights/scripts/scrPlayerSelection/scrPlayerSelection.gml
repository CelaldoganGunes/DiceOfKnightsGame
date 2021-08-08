function ChangeInput(player)
{
	switch(player.playerInput)
	{
		case PlayerInputTypes.noinput:
			player.playerInput = PlayerInputTypes.mouse;
		break;

		case PlayerInputTypes.mouse:
			player.playerInput = PlayerInputTypes.keyboard;
		break;
	
		case PlayerInputTypes.keyboard:
			player.playerInput = PlayerInputTypes.gamepad0;
		break;
	
		case PlayerInputTypes.gamepad3:
			player.playerInput = PlayerInputTypes.noinput;
		break;
	
		default:
			player.playerInput += 1;
		break;
	}
}

function SelectPlayer(player)
{
	player.image_alpha = 1;
	oPlayerSelectionManager.selectedPlayer = player;
}

function UnselectPlayer(player)
{
	player.image_alpha = 0.75;
	oPlayerSelectionManager.selectedPlayer = -1;
}

function StartGame()
{
	var count = 0;
	with(oPlayerSelection)
	{
		if (playerInput > 0)
		{
			count += 1;
		}
	}
	
	if (count > 1)
	{
		instance_create_layer(x,y,layer,oPlayerInputImporter);		
	}
}