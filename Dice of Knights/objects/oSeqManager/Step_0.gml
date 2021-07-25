if (seq = noone)
{
	exit;
}

if (layer_sequence_is_finished(seq))
{
	layer_sequence_destroy(seq);
	instance_destroy();
}