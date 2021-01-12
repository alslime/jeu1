value = irandom(3)

if value == 0
{
	sprite_index = sp_cloud1
}
if value == 1
{
	sprite_index = sp_cloud2
}
if value == 2
{
	sprite_index = sp_cloud3
}
if value == 3
{
	sprite_index = sp_cloud4
}

phy_speed_x = -0.005 * irandom_range(1,10)

touch = false

