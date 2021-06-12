/// @description Place Grids

global.boxAmountWidth = 7;
global.boxAmountHeight = 7;

x = (room_width - global.boxAmountWidth * GridSize + GridSize) / 2
y = (room_height - global.boxAmountHeight * GridSize + GridSize) / 2


for(var xx = 0; xx < global.boxAmountWidth; xx++)
{
	for(var yy = 0; yy < global.boxAmountHeight; yy++)
	{
		var i = instance_create_layer(x + xx * GridSize, y + yy * GridSize, "Grid", oGrid);
		i.image_index = irandom(1);
	}
}