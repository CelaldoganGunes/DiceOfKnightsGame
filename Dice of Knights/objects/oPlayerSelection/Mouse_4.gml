switch(playerInput)
{
	case PlayerInputTypes.noinput:
		playerInput = PlayerInputTypes.mouse;
	break;

	case PlayerInputTypes.mouse:
		playerInput = PlayerInputTypes.keyboard;
	break;
	
	case PlayerInputTypes.keyboard:
		playerInput = PlayerInputTypes.gamepad0;
	break;

	case PlayerInputTypes.gamepad0:
		playerInput = PlayerInputTypes.gamepad1;
	break;
	
	case PlayerInputTypes.gamepad1:
		playerInput = PlayerInputTypes.gamepad2;
	break;
	
	case PlayerInputTypes.gamepad2:
		playerInput = PlayerInputTypes.gamepad3;
	break;
	
	case PlayerInputTypes.gamepad3:
		playerInput = PlayerInputTypes.noinput;
	break;
}