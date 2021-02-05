if sub >= 50
{
	sub = 0
}

sub += ispeed

if instance_exists(o_shadow)
{
	inst_shadow = instance_find (o_shadow,0)

	if surface_exists(inst_shadow.surf)
	{
		surface_set_target(inst_shadow.surf)
		
		gpu_set_blendmode(bm_subtract)
		draw_sprite(sp_facility_light_shadow,sub,x,y)
		gpu_set_blendmode(bm_normal)

		surface_reset_target()
	}
}
