for (i = 0; i < (sprite_width - 1); i += 1)
{
	rdm = irandom(100)
	if rdm < 80
	{
		instance_create_layer(x + i,y,"lay_front", o_moving_grass)
	}
	if rdm < 95
	{
		instance_create_layer(x + i,y,"lay_shape_deco", o_moving_grass)
	}
}