draw_set_font(fntKnight32);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(instance_exists(global.playerList[global.turn]))
{
	draw_text(x, y + 36, getMagic().magicName);
}
else
{
	draw_text(x, y + 36, "DEAD");
}