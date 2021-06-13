if (gamepad_button_check_pressed(slot,gp_padu))
{
	leftVibration = min(leftVibration + 0.1, 1);
	gamepad_set_vibration(slot,leftVibration,rightVibration);
}

if (gamepad_button_check_pressed(slot,gp_padd))
{
	leftVibration = max(leftVibration - 0.1, 0);
	gamepad_set_vibration(slot,leftVibration,rightVibration);
}

if (gamepad_button_check_pressed(slot,gp_face4))
{
	rightVibration = min(rightVibration + 0.1, 1);
	gamepad_set_vibration(slot,leftVibration,rightVibration);
}

if (gamepad_button_check_pressed(slot,gp_face1))
{
	rightVibration = max(rightVibration - 0.1, 0);
	gamepad_set_vibration(slot,leftVibration,rightVibration);
}