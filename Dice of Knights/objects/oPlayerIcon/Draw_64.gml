draw_set_font(fntArial32);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var player = global.playerList[global.turn];
draw_text(x, y + 36, player.playerHeart);

image_index = player.playerID;