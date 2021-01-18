for (i = 0; i < (sprite_width - 2); i += 2)
{
	rdm = irandom(4)
	if rdm < 4
	{
		instance_create_layer(x + i,y,"lay_front", o_moving_grass)
	}
}