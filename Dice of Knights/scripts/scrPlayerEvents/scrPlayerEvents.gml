function MovePlayer(grid)
{
	if (global.moveCount < 1)
	{
		exit;
	}

	var player = getPlayer();

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

	changeTurn();	
}

function AttackPlayer(defenderPlayer)
{
	if (global.moveCount < 1)
	{
		exit;
	}

	var attackerPlayer = getPlayer();

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

	createSequence("SeqLayer",384,384,getFightSequence(attackerPlayer));
	createSequence("SeqLayer",1536,384,getFightSequence(defenderPlayer));
	createSequence("SeqLayer",960,256,seqFightText);
	
	oFightManager.attackerPlayer = attackerPlayer;
	oFightManager.defenderPlayer = defenderPlayer;
}

function seqFightText_Moment()
{
	createSequence("SeqLayer",0,640,seqDiceRollFight);
}

function seqDiceRollFight_Moment()
{
	var attackerDice = choose(1,2,2,3,4,5);
	var defenderDice = choose(1,2,2,3,4,5);
	
	createSequence("SeqLayer",-576,640,getDiceSequence(attackerDice));
	createSequence("SeqLayer",576,640,getDiceSequence(defenderDice));
	
	oFightManager.attackerDice = attackerDice;
	oFightManager.defenderDice = defenderDice;
}







