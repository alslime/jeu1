if countdown > 0
{
	countdown -= 1
}

dir_to_hero = point_direction(x, y, inst_hero.x+ inst_hero.sprite_width/2, inst_hero.y + inst_hero.sprite_height/2)
if distance_to_object(o_hero) < 320 && countdown == 0
{
	begin_follow = true
}
if begin_follow == true
{
	x += lengthdir_x(spd,dir_to_hero)
	y += lengthdir_y(spd,dir_to_hero)
	spd += 0.05
	phy_position_x = x
	phy_position_y = y	
}