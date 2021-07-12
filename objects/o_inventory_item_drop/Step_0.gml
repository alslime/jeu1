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

if z > 0
{
	z--
}
if z == 0
{
	pixel_smoke = instance_create_layer(x,y,"lay_gems_back",o_walking_dust2)
	z = 7
	pixel_smoke.time_to_destroy_pixel = 100
	pixel_smoke.phy_speed_x = random_range(-0.5,0.5)
	pixel_smoke.phy_speed_y = -1
	if irandom(1) == 0
	{
		pixel_smoke.image_blend = pixel_smoke_col
	}
}

splash_water(id)