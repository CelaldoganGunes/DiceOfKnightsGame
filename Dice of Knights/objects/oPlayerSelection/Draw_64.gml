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

	case PlayerInputs.gamepad:
		draw_text(x, y + 228, "Game Pad");
	break;
}