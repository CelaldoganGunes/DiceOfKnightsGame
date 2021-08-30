draw_set_font(fntKnight32);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (global.moveCount < 1)
{
	draw_text(x, y + 36, "Click to Roll");
}
else
{
	draw_text(x, y + 36, "Your Moves: " + string(global.moveCount));
	draw_text(x, y + 72, "Click to Pass");
}
