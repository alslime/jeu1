function afterimage()
{
	inst_aftimg = argument0
	aftimg_owner = argument1
	time = argument2
	
	inst_aftimg.x = aftimg_owner.x
	inst_aftimg.y = aftimg_owner.y
	inst_aftimg.sprite_index = aftimg_owner.sprite_index
	inst_aftimg.countdown = time
	inst_aftimg.maxcountdown = time

}