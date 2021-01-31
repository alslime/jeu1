x1 = camera_get_view_x(view_camera[0])
y1 = camera_get_view_y(view_camera[0])

if instance_exists(o_front_surface)
{
	inst_front_surface = instance_find (o_front_surface,0)

	if surface_exists(inst_front_surface.front_surf)
	{
		draw_set_font(fontbig)
		surface_set_target(inst_front_surface.front_surf)
		// Clean surface
		draw_clear_alpha(c_black,0)
	
		script_execute(text_outline,x1 + 62, y1 + 72,total_gears)
		draw_text_transformed_color(x1 + 62, y1 + 72,total_gears,1,1,0,c_yellow,c_yellow,c_red,c_red,1)
		gear_icon.strg_width = string_width(total_gears)

		draw_set_font(fontsmall)
		draw_healthbar(x1 + 32, y1 + 32, x1 + 32 + 70 + hpmax*0.3, y1 + 49, ((hpmax-hplost)/hpmax)*100,c_black,c_red,c_red,0,true,false)
		draw_healthbar(x1 + 32, y1 + 56, x1 + 32 + 70 + energymax*0.3, y1 + 73, ((energymax-energylost)/energymax)*100,c_black,c_blue,c_blue,0,true,false)
	
		//script_execute(text_outline,x1 +32 +hpmax/2 -string_width(string(hpmax-hplost) + "/" + string(hpmax))/2,y1 + 30,string(hpmax-hplost) + "/" + string(hpmax))
		draw_text_transformed_color(x1 +32 + (70 + hpmax*0.3)/2 -string_width(string(hpmax-hplost) + "/" + string(hpmax))/2, y1 + 25,string(hpmax-hplost) + "/" + string(hpmax),1,1,0,c_white,c_white,c_white,c_white,1)
	
		//script_execute(text_outline,x1 +32 +energymax/2 -string_width(string(energymax-energylost) + "/" + string(energymax))/2, y1 + 54,string(energymax-energylost) + "/" + string(energymax))
		draw_text_transformed_color(x1 +32 + (70 + energymax*0.3)/2 -string_width(string(energymax-energylost) + "/" + string(energymax))/2, y1 + 49,string(energymax-energylost) + "/" + string(energymax),1,1,0,c_white,c_white,c_white,c_white,1)
	
		surface_reset_target()
	}
}
 if instance_exists(o_shadow)
{
	inst_shadow = instance_find (o_shadow,0)

	if surface_exists(inst_shadow.surf)
	{
		black = 99/100*255
		var col = make_color_rgb(black,black,black)
		gpu_set_blendmode(bm_subtract)
		draw_circle_color(x + sprite_width/2, y+ sprite_height/2,150,c_black,col,false)
		gpu_set_blendmode( bm_normal )

		surface_set_target(inst_shadow.surf)
		// Clean surface
		draw_clear_alpha(c_black,0)
		draw_set_alpha(0.99)
		draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
		draw_set_alpha(1)
	
		gpu_set_blendmode(bm_subtract)
		draw_circle(x + sprite_width/2, y+ sprite_height/2,150,false)
		gpu_set_blendmode( bm_normal )
	
		surface_reset_target()
	}
}

draw_self()