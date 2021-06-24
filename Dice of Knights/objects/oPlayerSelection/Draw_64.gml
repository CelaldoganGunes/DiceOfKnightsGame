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
	
	default:
		
		var slot = playerInput - 3;
		draw_text(x, y + 228, "Game Pad " + string(slot));

		if(gamepad_is_connected(slot))
		{
			draw_text(x, y + 292, "Connected");
		}
		else
		{
			draw_text(x, y + 292, "Not Connected");
		}
	
	break;
}