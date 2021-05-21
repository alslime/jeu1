if instance_exists(o_front_surface) && inst_hero.equip_menu == false
{
	inst_front_surface = instance_find (o_front_surface,0)

	if surface_exists(inst_front_surface.front_surf)
	{	
		surface_set_target(inst_front_surface.front_surf)
	
		if distance_to_object(o_hero) < 75
		{
			draw_healthbar(x + sprite_width/2 - 10, y - 4, x + sprite_width/2 + 10, y -7,((hpmax-hplost)/hpmax)*100,hp_bar_col,c_red,c_red,0,true,false)
		}
	
		surface_reset_target()
	}
}

//physics_draw_debug()
