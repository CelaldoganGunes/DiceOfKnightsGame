if (calculate = true)
{
	exit;
}

if event_data[? "event_type"] == "sequence event"
{
	switch (event_data[? "message"])
	{
		case "calculateBattle":
			
			calculate = true;
			if (attackerDice > defenderDice)
			{
				defenderPlayer.playerHeart -= 1;
	
				if(defenderPlayer.playerHeart < 1)
				{
					instance_destroy(defenderPlayer);
					FinishGame();
				}
			}

			global.moveCount -= 1;
			attackerPlayer.playerSword -= 1;

			if(attackerPlayer.playerSword < 1)
			{
				oGridMoveStatus.image_index = 1;
			}

			ChangeTurn();
			layer_set_visible(layer_get_id("Fight"),false);
			layer_set_visible(layer_get_id("Gui"),true);
			instance_destroy();
		break;
	}
}