#macro GridSize 128

//randomize();
random_set_seed(123456789)

window_set_size(960,540);

enum PlayerInputTypes
{
	noinput,
	mouse,
	keyboard,
	gamepad0,
	gamepad1,
	gamepad2,
	gamepad3
}

