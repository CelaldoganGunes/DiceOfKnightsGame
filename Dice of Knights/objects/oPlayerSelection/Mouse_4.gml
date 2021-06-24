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
	
	case PlayerInputTypes.gamepad3:
		playerInput = PlayerInputTypes.noinput;
	break;
	
	default:
		playerInput += 1;
	break;
}