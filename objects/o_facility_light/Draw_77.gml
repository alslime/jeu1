if instance_exists(o_shadow)
{
	inst_shadow = instance_find (o_shadow,0)

	if surface_exists(inst_shadow.surf)
	{
		//black = 99/100*255
		//var col = make_color_rgb(black,black,black)
		//gpu_set_blendmode(bm_subtract)
		//draw_circle_color(x + sprite_width/2, y+ sprite_height/2,151,c_black,col,false)
		//gpu_set_blendmode( bm_normal )

		surface_set_target(inst_shadow.surf)
		// Clean surface
		//draw_clear_alpha(c_black,0)
	
		gpu_set_blendmode(bm_subtract)
		draw_rectangle(x, y + sprite_height, x + sprite_width, y + sprite_height + 500,false)

		gpu_set_blendmode(bm_normal)
		draw_self ()
		surface_reset_target()
	}
}

//draw_self ()

if instance_exists(o_front_surface)
{
	inst_front_surface = instance_find (o_front_surface,0)

	if surface_exists(inst_front_surface.front_surf)
	{

		surface_set_target(inst_front_surface.front_surf)
		// Clean surface
		draw_clear_alpha(c_black,0)
		
		gpu_set_blendmode(bm_add)
		draw_rectangle(x, y + sprite_height, x + sprite_width, y + sprite_height + 500,false)
draw_self()
		gpu_set_blendmode(bm_normal)
		
		surface_reset_target()
	}
}