if time_to_play > 0
{
	time_to_play -=1
}
if time_to_play == 0
{
	if j < (sprite_height - 2)
	{
		if i < (sprite_width - 4)
		{
			move_type = irandom(10)
			if move_type < 8
			{
				characters = instance_create_layer(x + i,y + j,"lay_shape_deco_front", o_screen)
				characters.owner = id	
			}
			else if move_type == 10
			{
				j += 6
				i = 4
			}
			i += 4
		}
		else
		{
				j += 6
				i = 4
		}
	}
	else
	{
		j = 6
		i = 4
	}
	time_to_play = irandom_range(10,30)
}