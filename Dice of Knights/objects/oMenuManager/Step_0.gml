var left = gamepad_button_check_pressed(0, gp_padl);
var right = gamepad_button_check_pressed(0, gp_padr);

var face1 = gamepad_button_check_pressed(0, gp_face1);
var face2 = gamepad_button_check_pressed(0, gp_face2);
var face3 = gamepad_button_check_pressed(0, gp_face3);

var start = gamepad_button_check_pressed(0,gp_start);

var rone = gamepad_button_check_pressed(0, gp_shoulderr);

var space = keyboard_check_pressed(vk_space);

var mouseLeft = mouse_check_button_pressed(mb_left);
var mouseRight = mouse_check_button_pressed(mb_right);
var mouseMiddle = mouse_check_button_pressed(mb_middle);

if (room = rmMenu)
{
	if ((start + space + mouseLeft) > 0)
	{
		room_goto(rmLobby);
	}
}
else if (room = rmLobby)
{
	if (right - left != 0)
	{
		var pos = ds_list_find_index(oPlayerSelectionManager.players,oPlayerSelectionManager.selectedPlayer);
		UnselectPlayer(oPlayerSelectionManager.selectedPlayer);
		
		pos -= right - left;
		
		if (pos > 3)
		{
			pos = 0;
		}
		else if (pos < 0)
		{
			pos = 3;
		}
		
		SelectPlayer(ds_list_find_value(oPlayerSelectionManager.players, pos));
	}
	else if (face1)
	{
		ChangeInput(oPlayerSelectionManager.selectedPlayer);
	}
	else if (rone + mouseMiddle > 0)
	{
		room_goto(rmControls);
	}
	else if (face2 + mouseRight > 0)
	{	
		StartGame();
	}
}
else if(room = rmControls)
{
	if (mouseRight + rone > 0)
	{
		room_goto(rmLobby);
	}
}

/*

	Music System

*/

if (audio_is_playing(musicCurrent) = false)
{
	if (musicWait > 0)
	{
		musicWait -= 1;
	}
	else
	{
		musicCurrent = ds_list_find_value(musicList,irandom(2));
		audio_play_sound(musicCurrent,1,0);
		musicWait = irandom(1200);
	}
}