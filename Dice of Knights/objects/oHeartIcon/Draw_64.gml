draw_set_font(fntKnight32);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(instance_exists(global.playerList[image_index]))
{
	var player = global.playerList[image_index];
	draw_text(x, y + 36, player.playerHeart);
}
else
{
	draw_text(x, y + 36, "DEAD");
}



if(global.turn != image_index)
{
	image_alpha = 0.75;
}
else
{
	image_alpha = 1;
}