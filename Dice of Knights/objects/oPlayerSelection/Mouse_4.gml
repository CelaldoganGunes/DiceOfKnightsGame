switch(status)
{
	case PlayerInputs.noinput:
		status = PlayerInputs.mouse;
	break;

	case PlayerInputs.mouse:
		status = PlayerInputs.keyboard;
	break;
	
	case PlayerInputs.keyboard:
		status = PlayerInputs.gamepad0;
	break;

	case PlayerInputs.gamepad0:
		status = PlayerInputs.gamepad1;
	break;
	
	case PlayerInputs.gamepad1:
		status = PlayerInputs.gamepad2;
	break;
	
	case PlayerInputs.gamepad2:
		status = PlayerInputs.gamepad3;
	break;
	
	case PlayerInputs.gamepad3:
		status = PlayerInputs.noinput;
	break;
}