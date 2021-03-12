function create_afterimage()
{
	inst_aftimg = argument0
	aftimg_owner = argument1
	time = argument2
	
	inst_aftimg.x = aftimg_owner.x
	inst_aftimg.y = aftimg_owner.y
	inst_aftimg.image_angle = aftimg_owner.image_angle
	inst_aftimg.sprite_index = argument3
	inst_aftimg.countdown = time
	inst_aftimg.maxcountdown = time
	
	if argument4 == true
	{
		inst_aftimg.image_xscale = -1
	}
}