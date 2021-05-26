if instance_exists(o_hero)
{
	inst_hero = instance_find(o_hero,0)
}

draw_set_font(fontsmall)
if instance_exists(o_front_surface) && inst_hero.equip_menu == false
{
	inst_front_surface = instance_find (o_front_surface,0)

	if surface_exists(inst_front_surface.front_surf)
	{	

		surface_set_target(inst_front_surface.front_surf)
		if draw_hplost_countdown > 0
		{
			script_execute(text_outline,x - font_get_size(fontsmall)/2, y - font_get_size(fontsmall)-1, dmg)
			draw_text_color(x - font_get_size(fontsmall)/2, y - font_get_size(fontsmall),dmg,col,col,col,col,1)
			draw_hplost_countdown -= 1
			
		}
	
		surface_reset_target()
	}
}