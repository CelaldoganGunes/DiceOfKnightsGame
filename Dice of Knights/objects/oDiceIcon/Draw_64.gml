draw_set_font(fntArial32);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y + 36, global.moveCount);
draw_text(x, y + 36 + 64, keyboard_key);