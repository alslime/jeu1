alpha = 1
vrdm = irandom(1)
if vrdm == 0
{
	chosen_seq = se_blood
}
else
{
	chosen_seq = se_blood2
}
seq_stain = layer_sequence_create("lay_shape_deco_front",x,y,chosen_seq)