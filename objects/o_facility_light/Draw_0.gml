if instance_exists(o_shadow)
{
	inst_shadow = instance_find (o_shadow,0)

	if surface_exists(inst_shadow.surf)
	{
		black = 99/100*255
		var col = make_color_rgb(black,black,black)
		//gpu_set_blendmode(bm_subtract)
		//draw_circle_color(x + sprite_width/2, y+ sprite_height/2,151,c_black,col,false)
		//gpu_set_blendmode( bm_normal )

		surface_set_target(inst_shadow.surf)
	

		
		surface_reset_target()
	}
}
	
		gpu_set_blendmode(bm_max)
		draw_rectangle_color(x, y + sprite_height, x + sprite_width, y + sprite_height + 500,c_white,c_white,c_white,c_white,false)
		gpu_set_blendmode(bm_normal)
draw_self()