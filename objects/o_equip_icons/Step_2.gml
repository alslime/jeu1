if inst_hero.create_buttons == true && inst_hero.wpn_abi_pow_chosen == id
{
	instance_destroy(o_equip_button)
	for (z = 0; z<total_items; z++)
	{
		if z < 5
		{
			instance_create_layer(x+sprite_width+34+16+(110*z),y-20,"lay_game_front",items_array[z])
		}
		if (z < 8) && (z > 4)
		{
			instance_create_layer(x+sprite_width+34+16+(110*(z-5)),y-20+110,"lay_game_front",items_array[z])
		}
		if (z < 12) && (z > 8)
		{
			instance_create_layer(x+sprite_width+34+16+(110*(z-9)),y-20+(110*2),"lay_game_front",items_array[z])
		}
	}
	inst_hero.create_buttons = false
}