draw_set_font(fntKnight32);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(instance_exists(global.playerList[global.turn]))
{
	var player = global.playerList[global.turn];
	draw_text(x, y + 36, player.playerTower);
	
	image_index = player.playerID;
}
else
{
	draw_text(x, y + 36, "DEAD");
}