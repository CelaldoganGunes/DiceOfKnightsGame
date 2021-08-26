function RollDice()
{		
	if (global.isRolled = false)
	{
		/*
		var player = GetPlayer();
		var list = player.myLastPositions;
		
		if (ds_list_size(list) > 2)
		{
			var pos0 = ds_list_find_value(list,0);
			var pos1 = ds_list_find_value(list,1);
			var pos2 = ds_list_find_value(list,2);
			
			if (pos0 = pos1 and pos1 = pos2)
			{
				RandomTeleport(player);
			}
		}
		*/
		global.isRolled = true;
		layer_set_visible(layer_get_id("Gui"),false);
		layer_set_visible(layer_get_id("Fight"),true);
		CreateSequence("SeqLayer",0,540,seqDiceRoll);
		
	}
	else
	{
		SaveLastPosition(GetPlayer())
		global.moveCount = 0;
		
		ChangeTurn();
	}
}

function ChangeTurn()
{
	if (global.moveCount > 0)
	{
		exit;
	}
	
	global.moveCount = 0;
	global.isRolled = false;
	
	
	
	if ((global.turn + 1) =  global.playerSlot)
	{
		global.turn = 0;
	}
	else
	{
		global.turn += 1;
	}
	
	if(!instance_exists(global.playerList[global.turn]))
	{
		ChangeTurn();
		exit;
	}
	
	if (instance_number(oPlayer) = 2)
	{
		VanishGrid();
	}	
	
	var player = GetPlayer();
	oGridMoveStatus.x = player.x;
	oGridMoveStatus.y = player.y;
	oGridMoveStatus.visible = false;
	ChangeMagicButton();
}

function seqDiceRoll_Moment()
{
	global.moveCount = choose(1,2,2,3,4,5);
	
	if(global.moveCount = 1)
	{
		CreateSequence("Gui",0,540,seqDice1);	
	}
	else if(global.moveCount = 2)
	{
		CreateSequence("Gui",0,540,seqDice2);	
	}
	else if(global.moveCount = 3)
	{
		CreateSequence("Gui",0,540,seqDice3);	
	}
	else if(global.moveCount = 4)
	{
		CreateSequence("Gui",0,540,seqDice4);	
	}
	else if(global.moveCount = 5)
	{
		CreateSequence("Gui",0,540,seqDice5);	
	}
	
	var player = GetPlayer();
	var list = player.myLastPositions;

	oGridMoveStatus.visible = true;
	oGridMoveStatus.image_index = 1;
	oGridMoveStatus.x = player.x;
	oGridMoveStatus.y = player.y;
	layer_set_visible(layer_get_id("Gui"),true);
	layer_set_visible(layer_get_id("Fight"),false);
	
	if (ds_list_size(list) > 2)
	{
		var pos0 = ds_list_find_value(list,0);
		var pos1 = ds_list_find_value(list,1);
		var pos2 = ds_list_find_value(list,2);
			
		if (pos0 = pos1 and pos1 = pos2)
		{
			exit;
		}
	}	
	
	player.playerTower += 1;
	player.playerSword += 1;
	player.playerElixir += 1;
}

function RandomTeleport(player)
{
	ds_list_shuffle(global.gridList);
	
	var grid = ds_list_find_value(global.gridList,0);	
	
	if (grid.player != noone or grid.tower != noone)
	{
		RandomTeleport(player);
	}
	else if (grid = player.grid)
	{
		RandomTeleport(player);
	}
	else
	{
		player.x = grid.x;
		player.y = grid.y;
	}
}