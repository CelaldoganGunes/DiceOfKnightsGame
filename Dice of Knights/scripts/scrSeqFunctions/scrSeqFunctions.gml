function createSequence(_layer,xx,yy,sequence)
{
	var seqID = layer_sequence_create(_layer,xx,yy,sequence);
	var manager = instance_create_layer(0,0,"Gui",oSeqManager);
	manager.seq = seqID;
}