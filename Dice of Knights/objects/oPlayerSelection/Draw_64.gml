draw_set_font(fntArial32);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y + 164, "Player " + string(image_index));

switch(playerInput)
{
	case PlayerInputTypes.noinput:
	
		draw_text(x, y + 228, "No Player");
		
	break;

	case PlayerInputTypes.mouse:
	
		draw_text(x, y + 228, "Mouse");
		
	break;

	case PlayerInputTypes.keyboard:
	
		draw_text(x, y + 228, "Keyboard");
		
	break;

	case PlayerInputTypes.gamepad0:
	
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
	
	case PlayerInputTypes.gamepad1:
	
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
	
	case PlayerInputTypes.gamepad2:
	
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
	
	case PlayerInputTypes.gamepad3:
	
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