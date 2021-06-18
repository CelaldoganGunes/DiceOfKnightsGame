switch(status)
{
	case PlayerInputs.noinput:
		status = PlayerInputs.mouse;
	break;

	case PlayerInputs.mouse:
		status = PlayerInputs.keyboard;
	break;
	
	case PlayerInputs.keyboard:
		status = PlayerInputs.gamepad;
	break;

	case PlayerInputs.gamepad:
		status = PlayerInputs.noinput;
	break;
}