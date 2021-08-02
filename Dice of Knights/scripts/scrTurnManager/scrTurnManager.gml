function RollDice()
{		
	if (global.isRolled = false)
	{
		global.isRolled = true;
		layer_set_visible(layer_get_id("Gui"),false);
		layer_set_visible(layer_get_id("Fight"),true);
		createSequence("SeqLayer",0,540,seqDiceRoll);
		
	}
	else
	{
		global.moveCount = 0;
		changeTurn();
	}
}

function changeTurn()
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
		changeTurn();
		exit;
	}
	
	var player = getPlayer();
	oGridMoveStatus.x = player.x;
	oGridMoveStatus.y = player.y;
	oGridMoveStatus.visible = false;
}

function seqDiceRoll_Moment()
{
	global.moveCount = choose(1,2,2,3,4,5);
	
	if(global.moveCount = 1)
	{
		createSequence("Gui",0,540,seqDice1);	
	}
	else if(global.moveCount = 2)
	{
		createSequence("Gui",0,540,seqDice2);	
	}
	else if(global.moveCount = 3)
	{
		createSequence("Gui",0,540,seqDice3);	
	}
	else if(global.moveCount = 4)
	{
		createSequence("Gui",0,540,seqDice4);	
	}
	else if(global.moveCount = 5)
	{
		createSequence("Gui",0,540,seqDice5);	
	}
	
	var player = getPlayer();
	player.playerTower += 5;
	player.playerSword += 5;
	player.playerElixir += 5;
	oGridMoveStatus.visible = true;
	oGridMoveStatus.image_index = 1;
	oGridMoveStatus.x = player.x;
	oGridMoveStatus.y = player.y;
	layer_set_visible(layer_get_id("Gui"),true);
	layer_set_visible(layer_get_id("Fight"),false);
}