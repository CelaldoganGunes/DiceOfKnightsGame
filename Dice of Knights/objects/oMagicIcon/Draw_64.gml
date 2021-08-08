draw_set_font(fntKnight32);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(instance_exists(global.playerList[global.turn]))
{
	draw_text(x, y + 36, GetMagic().magicName);
	
	var sword = string(GetMagic().sword);
	var tower = string(GetMagic().tower);
	var elixir = string(GetMagic().elixir);
	draw_text(x, y + 72, sword + " - " + tower + " - " + elixir);
}
else
{
	draw_text(x, y + 36, "DEAD");
}