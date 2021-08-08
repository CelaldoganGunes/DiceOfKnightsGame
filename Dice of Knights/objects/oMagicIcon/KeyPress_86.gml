var magic = getMagic();
var txt = magic.magicName + " ";
for(var i = 0; i < ds_list_size(magic.whoUsedThisMagic); i++)
{
	txt = txt + string(ds_list_find_value(magic.whoUsedThisMagic,i)) + " ";
}

show_message(txt)