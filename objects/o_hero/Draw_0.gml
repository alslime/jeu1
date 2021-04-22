x1 = camera_get_view_x(view_camera[0])
y1 = camera_get_view_y(view_camera[0])

if instance_exists(o_front_surface)
{
	inst_front_surface = instance_find (o_front_surface,0)

	if surface_exists(inst_front_surface.front_surf)
	{	
		draw_set_font(fontbig)
		surface_set_target(inst_front_surface.front_surf)	

		draw_set_font(fontsmall)
		draw_healthbar(x1 + 13, y1 + 5, x1 + 60 + hpmax*0.05, y1 + 15, ((hpmax-hplost)/hpmax)*100,hp_bar_col,c_red,c_red,0,true,true)
		draw_healthbar(x1 + 13, y1 + 19, x1 + 40 + energymax*0.3, y1 + 29, ((energymax-energylost)/energymax)*100,hp_bar_col,c_blue,c_blue,0,true,true)
		draw_healthbar(x1 + 5, y1 + 5, x1 + 9, y1 + 29, ((xp)/xpmax)*100,hp_bar_col,c_white,c_white,3,true,true)
		
		script_execute(text_outline,x1 + 17, y1 + 28,total_gems)
		script_execute(text_outline,x1 +15, y1 + 2,string(hpmax-hplost))
		script_execute(text_outline,x1 +15, y1 + 16,string(energymax-energylost))
		
		draw_text_transformed_color(x1 + 17, y1 + 29,total_gems,1,1,0,c_white,c_white,c_white,c_white,1)
		gem_icon.strg_width = string_width(total_gems)

		draw_text_transformed_color(x1 +15, y1 + 3,string(hpmax-hplost),1,1,0,c_white,c_white,c_white,c_white,1)
		draw_text_transformed_color(x1 +15, y1 + 17,string(energymax-energylost),1,1,0,c_white,c_white,c_white,c_white,1)
		
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
		gpu_set_blendmode(bm_normal)
	
		surface_reset_target()
	}
}

//draw_self()