draw_set_font(fntKnight128);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (room = rmMenu)
{
	draw_text(x,y ,"Dice of Knights");
	
	draw_set_font(fntKnight96);
	draw_text(960, 600, "Press Anything to Start The Battle");
}