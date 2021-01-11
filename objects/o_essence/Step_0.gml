if countdown > 0
{
	countdown -= 1
}
if countdown == 0
{
	
	
	
	// does not work do not know why... but event happens...probably physics
	move_towards_point(in_hero.x + in_hero.sprite_width/2, in_hero.y + in_hero.sprite_height/2, 10)
}