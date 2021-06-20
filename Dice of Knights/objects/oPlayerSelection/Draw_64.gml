draw_set_font(fntArial32);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y + 164, "Player " + string(image_index));

switch(status)
{
	case PlayerInputs.noinput:
	
		draw_text(x, y + 228, "No Player");
		
	break;

	case PlayerInputs.mouse:
	
		draw_text(x, y + 228, "Mouse");
		
	break;

	case PlayerInputs.keyboard:
	
		draw_text(x, y + 228, "Keyboard");
		
	break;

	case PlayerInputs.gamepad0:
	
		draw_text(x, y + 228, "Game Pad 0");
		
		if(gamepad_is_connected(0))
		{
			draw_text(x, y + 292, "Connected");
		}
		else
		{
			draw_text(x, y + 292, "Not Connected");
		}

	break;
	
	case PlayerInputs.gamepad1:
	
		draw_text(x, y + 228, "Game Pad 1");
		
		if(gamepad_is_connected(1))
		{
			draw_text(x, y + 292, "Connected");
		}
		else
		{
			draw_text(x, y + 292, "Not Connected");
		}
		
	break;
	
	case PlayerInputs.gamepad2:
	
		draw_text(x, y + 228, "Game Pad 2");
				
		if(gamepad_is_connected(2))
		{
			draw_text(x, y + 292, "Connected");
		}
		else
		{
			draw_text(x, y + 292, "Not Connected");
		}
		
	break;
	
	case PlayerInputs.gamepad3:
	
		draw_text(x, y + 228, "Game Pad 3");
				
		if(gamepad_is_connected(3))
		{
			draw_text(x, y + 292, "Connected");
		}
		else
		{
			draw_text(x, y + 292, "Not Connected");
		}
	break;
}