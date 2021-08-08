function MovePlayer(grid)
{
	if (global.moveCount < 1)
	{
		exit;
	}

	var player = GetPlayer();

	if (point_distance(player.x,player.y,grid.x,grid.y) != 128)
	{
		exit;
	}

	with(grid)
	{
		if (place_meeting(grid.x,grid.y,oPlayer))
		{
			exit;
		}

		if (place_meeting(grid.x,grid.y,oTower))
		{
			exit;
		}	
	}

	player.x = grid.x;
	player.y = grid.y;
	global.moveCount -= 1;

	ChangeTurn();	
}

function AttackPlayer(defenderPlayer)
{
	if (global.moveCount < 1)
	{
		exit;
	}

	var attackerPlayer = GetPlayer();

	if (point_distance(attackerPlayer.x,attackerPlayer.y,defenderPlayer.x,defenderPlayer.y) != 128)
	{
		exit;
	}

	if (attackerPlayer.playerSword < 1)
	{
		exit;
	}

	instance_create_layer(x,y,"SeqLayer",oFightManager);
	
	layer_set_visible(layer_get_id("Fight"),true);
	layer_set_visible(layer_get_id("Gui"),false);

	CreateSequence("SeqLayer",384,384,GetFightSequence(attackerPlayer));
	CreateSequence("SeqLayer",1536,384,GetFightSequence(defenderPlayer));
	CreateSequence("SeqLayer",960,256,seqFightText);
	
	oFightManager.attackerPlayer = attackerPlayer;
	oFightManager.defenderPlayer = defenderPlayer;
}

function seqFightText_Moment()
{
	CreateSequence("SeqLayer",0,640,seqDiceRollFight);
}

function seqDiceRollFight_Moment()
{
	var attackerDice = choose(1,2,2,3,4,5);
	var defenderDice = choose(1,2,2,3,4,5);
	
	CreateSequence("SeqLayer",-576,640,GetDiceSequence(attackerDice));
	CreateSequence("SeqLayer",576,640,GetDiceSequence(defenderDice));
	
	oFightManager.attackerDice = attackerDice;
	oFightManager.defenderDice = defenderDice;
}

function SaveLastPosition(player)
{
	var list = player.myLastPositions;
	
	if (ds_list_size(list) > 2)
	{
		ds_list_delete(list,0);
	}
	ds_list_add(list,player.grid);
}