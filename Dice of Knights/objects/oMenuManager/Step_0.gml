var left = gamepad_button_check_pressed(0, gp_padl);
var right = gamepad_button_check_pressed(0, gp_padr);

var start = gamepad_button_check_pressed(0,gp_start);
var select = gamepad_button_check_pressed(0,gp_select);

var space = keyboard_check_pressed(vk_space);

var mouseLeft = mouse_check_button_pressed(mb_left);
var mouseMiddle = mouse_check_button_pressed(mb_middle);
var mouseRight = mouse_check_button_pressed(mb_right);

if (room = rmMenu)
{
	if ((start + space + mouseLeft) > 0)
	{
		room_goto(rmLobby);
	}
}
if (room = rmLobby)
{
	if (right - left != 0)
	{
		var pos = ds_list_find_index(oPlayerSelectionManager.players,oPlayerSelectionManager.selectedPlayer);
		UnselectPlayer(oPlayerSelectionManager.selectedPlayer);
		
		pos = pos + right - left;
		
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
	else if (select)
	{
		ChangeInput(oPlayerSelectionManager.selectedPlayer);
	}
	else if (start + mouseRight > 0)
	{	
		StartGame();
	}
}
