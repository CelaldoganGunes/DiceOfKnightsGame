/// @description Create Room

global.boxAmountWidth = 7;
global.boxAmountHeight = 7;

x = (room_width - global.boxAmountWidth * GridSize + GridSize) / 2
y = (room_height - global.boxAmountHeight * GridSize + GridSize) / 2

global.gridList = ds_list_create();

for(var xx = 0; xx < global.boxAmountWidth; xx++)
{
	for(var yy = 0; yy < global.boxAmountHeight; yy++)
	{
		var i = instance_create_layer(x + xx * GridSize, y + yy * GridSize, "Grid", oGrid);
		i.image_index = irandom(1);
		ds_list_add(global.gridList, i);
	}
}

global.playerSlot = 4;

instance_create_layer(x,y,"Gui",oTurnManager);

for(var n = 0; n < 4; n++)
{
	ds_list_shuffle(global.gridList);
	
	var pos = irandom(ds_list_size(global.gridList)-1);
	var grid = ds_list_find_value(global.gridList,pos);
	
	ds_list_delete(global.gridList,pos);
	
	var p = instance_create_layer(grid.x, grid.y, "Player", oPlayer);

	global.playerList[n] = p;
	p.playerID = n;
	p.playerHeart = 3;
	p.playerTower = 1;
	p.playerSword = 0;
	p.playerInput = oPlayerInputImporter.playerInputs[n];
	
	switch(n)
	{
		case 0:
			p.sprite_index = sPlayer1;
		break;
		
		case 1:
			p.sprite_index = sPlayer2;
		break;

		case 2:
			p.sprite_index = sPlayer3;
		break;
		
		case 3:
			p.sprite_index = sPlayer4;
		break;
	}
	
	if(p.playerInput = PlayerInputs.noinput)
	{
		instance_destroy(p);
	}
}

instance_create_layer(x,y,"Gui",oGridMoveStatus);
instance_create_layer(x,y,"Gui",oKeyboardInputManager);
instance_destroy(oPlayerInputImporter);

if (!instance_exists(global.playerList[0]))
{
	changeTurn();
}