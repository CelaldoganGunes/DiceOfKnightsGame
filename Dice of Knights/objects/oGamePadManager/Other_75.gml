if (ds_map_find_value(async_load, "event_type") = "gamepad discovered")
{
	var slot = ds_map_find_value(async_load, "pad_index");

	var i = instance_create_layer(x + 192 + slot * 192 ,y, layer, oGamePad);
	global.gamepadList[slot] = i;
}
else if (ds_map_find_value(async_load, "event_type") = "gamepad lost")
{
	var slot = ds_map_find_value(async_load, "pad_index");

	var i = global.gamepadList[slot];
	global.gamepadList[slot] = noone;
	instance_destroy(i);
}
