function afterimage()
{
	inst_aftimg = argument0
	owner = argument1
	time = argument2
	
	inst_aftimg.x = owner.x
	inst_aftimg.y = owner.y
	inst_aftimg.sprite_index = owner.sprite_index
	inst_aftimg.countdown = time
	inst_aftimg.maxcountdown = time

}