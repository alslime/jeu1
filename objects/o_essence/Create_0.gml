
// value is not set before creating event... should fix this

in_hero = instance_find (o_hero,0)
phy_speed_x = random_range(-9,9)
phy_speed_y = random_range(-9,9)
countdown = 120

if value = 1000
{
	sprite_index = sp_essence1000
}
else if value = 500
{
	sprite_index = sp_essence500
}
else if value = 100
{
	sprite_index = sp_essence100
}
else if value = 50
{
	sprite_index = sp_essence50
}
else if value = 10
{
	sprite_index = sp_essence10
}
else if value = 5
{
	sprite_index = sp_essence5
}
else if value = 1
{
	sprite_index = sp_essence1
}