if countdown > 0
{
	countdown -= 1
}

dir_to_hero = point_direction(x, y, inst_hero.x + inst_hero.sprite_width/2, inst_hero.y + inst_hero.sprite_height/2)
test_x = lengthdir_x(spd,dir_to_hero)
test_y = lengthdir_y(spd,dir_to_hero)
	
if distance_to_object(o_hero) < inst_hero.pickup_range && countdown == 0 
{
	begin_follow = true
}
else
{
	begin_follow = false
	spd = 0
}
if begin_follow == true
{
	phy_speed_x = test_x
	phy_speed_y = test_y
	if spd < 20
	{
		spd += 0.1
	}
}

splash_water(id)