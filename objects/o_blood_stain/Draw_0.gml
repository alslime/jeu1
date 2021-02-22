alpha -= 0.001

if alpha <=0
{
	layer_sequence_destroy(seq_stain)
	instance_destroy()
}