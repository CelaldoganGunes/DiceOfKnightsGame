draw_set_font(fntArial32);
//draw_set_halign(fa_center);
//draw_set_valign(fa_middle);
draw_set_color(c_black);

draw_text(x, y + 0 * 64, "Device: " + string(slot) + " - " + string(id));
draw_text(x, y + 1 * 64, "L-Vib: " + string(leftVibration));
draw_text(x, y + 2 * 64, "R-Vib: " + string(rightVibration));
draw_text(x, y + 3 * 64, "Left Trigger: " + string(gamepad_button_value(slot, gp_shoulderlb)));
draw_text(x, y + 4 * 64, "Right Trigger: " + string(gamepad_button_value(slot, gp_shoulderrb)));
draw_text(x, y + 5 * 64, "Left Shoulder: " + string(gamepad_button_check(slot,gp_shoulderl)));
draw_text(x, y + 6 * 64, "Right Shoulder: " + string(gamepad_button_check(slot,gp_shoulderr)));
draw_text(x, y + 7 * 64, "Axis Count: " + string(gamepad_axis_count(slot)));
draw_text(x, y + 8 * 64, "Left H: " + string(gamepad_axis_value(slot,gp_axislh)));
draw_text(x, y + 9 * 64, "Left V: " + string(gamepad_axis_value(slot,gp_axislv)));
draw_text(x, y + 10 * 64, "Right H: " + string(gamepad_axis_value(slot,gp_axisrh)));
draw_text(x, y + 11 * 64, "Right V: " + string(gamepad_axis_value(slot,gp_axisrv)));


//gamepad_set_vibration(slot,vibration,vibration);
