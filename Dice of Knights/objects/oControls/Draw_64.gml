draw_set_font(fntKnight32);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//vertical

for (var i = 1; i < 5; i += 1)
{
	draw_line_width_color(x + i * myWidth, y, x + i * myWidth, y + 840, 10, c_white, c_white);
}

//horizontal

for (var b = 1; b < 7; b += 1)
{
	draw_line_width_color(x, y + b * myHeight, x + 1500, y + b * myHeight, 10, c_white, c_white);
}

draw_text(x + 150 + 0 * 300, y + 60 + 0 * 120, "Event");
draw_text(x + 150 + 0 * 300, y + 60 + 1 * 120, "Roll Dice/Skip Turn");
draw_text(x + 150 + 0 * 300, y + 60 + 2 * 120, "Select Square");
draw_text(x + 150 + 0 * 300, y + 60 + 3 * 120, "Move/Attack");
draw_text(x + 150 + 0 * 300, y + 60 + 4 * 120, "Build Tower");
draw_text(x + 150 + 0 * 300, y + 60 + 5 * 120, "Select Magic");
draw_text(x + 150 + 0 * 300, y + 60 + 6 * 120, "Use Magic");


draw_text(x + 150 + 1 * 300, y + 60 + 0 * 120, "Mouse");
draw_text(x + 150 + 1 * 300, y + 60 + 1 * 120, "Click to Icon");
draw_text(x + 150 + 1 * 300, y + 60 + 2 * 120, "Mouse Over");
draw_text(x + 150 + 1 * 300, y + 60 + 3 * 120, "Click to Target");
draw_text(x + 150 + 1 * 300, y + 60 + 4 * 120, "Right Click");
draw_text(x + 150 + 1 * 300, y + 60 + 5 * 120, "Click to Icon");
draw_text(x + 150 + 1 * 300, y + 60 + 6 * 120, "Middle Click");


draw_text(x + 150 + 2 * 300, y + 60 + 0 * 120, "Keyboard");
draw_text(x + 150 + 2 * 300, y + 60 + 1 * 120, "Space Button");
draw_text(x + 150 + 2 * 300, y + 60 + 2 * 120, "WASD");
draw_text(x + 150 + 2 * 300, y + 60 + 3 * 120, "E");
draw_text(x + 150 + 2 * 300, y + 60 + 4 * 120, "T");
draw_text(x + 150 + 2 * 300, y + 60 + 5 * 120, "R");
draw_text(x + 150 + 2 * 300, y + 60 + 6 * 120, "F");

draw_set_font(fntPs32);

draw_text(x + 150 + 3 * 300, y + 60 + 0 * 120, "PS");
draw_text(x + 150 + 3 * 300, y + 60 + 1 * 120, "L1");
draw_text(x + 150 + 3 * 300, y + 60 + 2 * 120, "D-Pad");
draw_text(x + 150 + 3 * 300, y + 60 + 3 * 120, "X");
draw_text(x + 150 + 3 * 300, y + 60 + 4 * 120, "Circle");
draw_text(x + 150 + 3 * 300, y + 60 + 5 * 120, "R1");
draw_text(x + 150 + 3 * 300, y + 60 + 6 * 120, "Square");

draw_set_font(fntXbox32);

draw_text(x + 150 + 4 * 300, y + 60 + 0 * 120, "XBOX");
draw_text(x + 150 + 4 * 300, y + 60 + 1 * 120, "LB");
draw_text(x + 150 + 4 * 300, y + 60 + 2 * 120, "D-Pad");
draw_text(x + 150 + 4 * 300, y + 60 + 3 * 120, "A");
draw_text(x + 150 + 4 * 300, y + 60 + 4 * 120, "B");
draw_text(x + 150 + 4 * 300, y + 60 + 5 * 120, "RB");
draw_text(x + 150 + 4 * 300, y + 60 + 6 * 120, "X");
