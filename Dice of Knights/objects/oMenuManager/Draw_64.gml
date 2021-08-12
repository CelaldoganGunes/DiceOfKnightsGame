draw_set_font(fntKnight128);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (room = rmMenu)
{
	draw_text(x,y,"Dice of Knights");
	
	draw_set_font(fntKnight96);
	draw_text(x, y + 100, "Press Start/Space");
	
	draw_set_font(fntKnight32);
	draw_text(x, y + 540, "Celaldogan Gunes");
}
else if(room = rmLobby)
{
	draw_set_valign(fa_middle);
	draw_set_font(fntKnight128);
	draw_text(960,256,"Player Select")
	
	//Left
	
	draw_set_halign(fa_left);
	draw_set_font(fntKnight32);
	draw_text(64,768+64,"Change Controls:");
	draw_text(64,832+64,"Mouse / Left Click");
	
	draw_set_font(fntXbox32);
	draw_text(64,896+64,"g / A D a");
	
	draw_set_font(fntPs32);
	draw_text(64,960+64,"h / A D x");
	
	//Right
	
	draw_set_halign(fa_right);
	draw_set_font(fntKnight32);
	draw_text(1856,768+64,"Start Game:");
	draw_text(1856,832+64,"Right Click");
	
	draw_set_font(fntXbox32);
	draw_text(1856,896+64,"b");
	
	draw_set_font(fntPs32);
	draw_text(1856,960+64,"c");	
}