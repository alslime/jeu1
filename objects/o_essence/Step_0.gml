if countdown > 0
{
	countdown -= 1
}

dir_to_hero = point_direction(x, y, inst_hero.x + inst_hero.sprite_width/2, inst_hero.y + inst_hero.sprite_height/2)
test_x = lengthdir_x(spd,dir_to_hero)
test_y = lengthdir_y(spd,dir_to_hero)
	
if distance_to_object(o_hero) < 200 && countdown == 0 
{
	begin_follow = true
}
if begin_follow == false
{
	if phy_speed_x > 0
	{
		phy_speed_x -= 0.05
	}
	else if phy_speed_x < 0
	{
		phy_speed_x += 0.05
	}
	if phy_speed_y > 0
	{
		phy_speed_y -= 0.05
	}
	else if phy_speed_y < 0
	{
		phy_speed_y += 0.05
	}
}
if begin_follow == true
{
	phy_speed_x = test_x
	phy_speed_y = test_y
	spd += 0.05	
}