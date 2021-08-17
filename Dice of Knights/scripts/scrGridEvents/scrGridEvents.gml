function MoveGrid(xx,yy)
{
	with(oGrid)
	{
		if(x = xx and y = yy)
		{
			GridStatus(id);
		}
	}
}

function GridStatus(grid)
{
	if (global.moveCount < 1)
	{
		oGridMoveStatus.visible = false;
		exit;
	}

	oGridMoveStatus.x = grid.x;
	oGridMoveStatus.y = grid.y;

	var player = GetPlayer();

	oGridMoveStatus.visible = true;

	if(grid.x = player.x and grid.y = player.y)
	{
		oGridMoveStatus.image_index = 1;
		exit;
	}
	
	if (point_distance(player.x,player.y,grid.x,grid.y) != 128)
	{
		oGridMoveStatus.image_index = 1;
		exit;
	}

	with(grid)
	{
		if (place_meeting(grid.x,grid.y,oPlayer))
		{
			if(player.playerSword < 1)
			{
				oGridMoveStatus.image_index = 1;
				exit;
			}
		}

		if (place_meeting(grid.x,grid.y,oTower))
		{
			if(player.playerSword < 1)
			{
				oGridMoveStatus.image_index = 1;
				exit;
			}
		}		
	}


	oGridMoveStatus.image_index = 0;
}

function VanishGrid()
{
	with(oGrid)
	{
		event_user(1);
	}	
	
	ds_list_shuffle(global.gridList);
	
	var grid = ds_list_find_value(global.gridList,0);
	
	if (grid.player = noone or grid.tower = noone)
	{
		with(grid)
		{
			event_user(0);
		}
	}
	else
	{
		VanishGrid();
	}
}