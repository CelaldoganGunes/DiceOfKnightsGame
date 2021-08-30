layer_sequence_create("Gui",64,832,seqDiceRollMenu);

x = 960;
y = 500;


musicList = ds_list_create();
ds_list_add(musicList, sndMusic1);
ds_list_add(musicList, sndMusic2);
ds_list_add(musicList, sndMusic3);

audio_play_sound(sndMusic2,1,0);
musicCurrent = sndMusic2;