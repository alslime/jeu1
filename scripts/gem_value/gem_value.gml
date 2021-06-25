// argument0 = inst_essence
// argument1 = evalue
function gem_value()
{
	argument0.phy_speed_x = irandom_range(-6,6)
	argument0.phy_speed_y = irandom_range(-6,-1)
	argument0.countdown = 120
	argument0.gemValue = argument1

	if argument1 = 1000
	{
		argument0.sprite_index = sp_gem_1000
	}
	else if argument1 = 500
	{
		argument0.sprite_index = sp_gem_500
	}
	else if argument1 = 100
	{
		argument0.sprite_index = sp_gem_100
	}
	else if argument1 = 50
	{
		argument0.sprite_index = sp_gem_50
	}
	else if argument1 = 10
	{
		argument0.sprite_index = sp_gem_10
	}
	else if argument1 = 5
	{
		argument0.sprite_index = sp_gem_5
	}
	else if argument1 = 1
	{
		argument0.sprite_index = sp_gem_1
	}
}