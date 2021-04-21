x1 = camera_get_view_x(view_camera[0])
y1 = camera_get_view_y(view_camera[0])

if instance_exists(o_front_surface)
{
	inst_front_surface = instance_find (o_front_surface,0)

	if surface_exists(inst_front_surface.front_surf)
	{
		draw_set_font(fontbig)
		surface_set_target(inst_front_surface.front_surf)
	
		script_execute(text_outline,x1 + 62, y1 + 69,total_gears)
		draw_text_transformed_color(x1 + 62, y1 + 69,total_gears,1,1,0,c_white,c_white,c_white,c_white,1)
		gear_icon.strg_width = string_width(total_gears)

		draw_set_font(fontsmall)
		draw_healthbar(x1 + 11, y1 + 4, x1 + 60 + hpmax*0.05, y1 + 14, ((hpmax-hplost)/hpmax)*100,hp_bar_col,c_red,c_red,0,true,true)
		draw_healthbar(x1 + 11, y1 + 17, x1 + 40 + energymax*0.3, y1 + 27, ((energymax-energylost)/energymax)*100,hp_bar_col,c_blue,c_blue,0,true,true)
		draw_healthbar(x1 + 4, y1 + 4, x1 + 8, y1 + 27, ((xp)/xpmax)*100,hp_bar_col,c_white,c_white,3,true,true)
		
		script_execute(text_outline,x1 +13, y1 + 1,string(hpmax-hplost))
		draw_text_transformed_color(x1 +13, y1 + 1,string(hpmax-hplost),1,1,0,c_white,c_white,c_white,c_white,1)
	
		script_execute(text_outline,x1 +13, y1 + 14,string(energymax-energylost))
		draw_text_transformed_color(x1 +13, y1 + 14,string(energymax-energylost),1,1,0,c_white,c_white,c_white,c_white,1)
	
		surface_reset_target()
	}
}
 if instance_exists(o_shadow)
{
	inst_shadow = instance_find (o_shadow,0)

	if surface_exists(inst_shadow.surf)
	{
		surface_set_target(inst_shadow.surf)
	
		gpu_set_blendmode(bm_subtract)
		draw_sprite(sp_hero_light,0,x + sprite_width/2,y + sprite_height/2)
		gpu_set_blendmode( bm_normal )
	
		surface_reset_target()
	}
}

//draw_self()