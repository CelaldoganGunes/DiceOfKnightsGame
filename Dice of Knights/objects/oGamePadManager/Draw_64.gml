draw_set_font(fntArial32);
//draw_set_halign(fa_center);
//draw_set_valign(fa_middle);
draw_set_color(c_black);

for(var i = 0; i < 12; i++)
{
	draw_text(x, y + 64 * i, global.gamepadList[i]);
}
