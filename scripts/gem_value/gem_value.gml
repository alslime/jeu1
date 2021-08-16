// argument0 = evalue
// argument1 = x
// argument2 = y
function gem_value()
{
	inst_gem = instance_create_layer(argument1,argument2,"lay_gems",o_gem)
	inst_gem.phy_speed_x = irandom_range(-6,6)
	inst_gem.phy_speed_y = irandom_range(-6,-1)
	inst_gem.countdown = 120
	inst_gem.gemValue = argument0

	if argument0 = 1000
	{
		inst_gem.sprite_index = sp_gem_1000
	}
	else if argument0 = 500
	{
		inst_gem.sprite_index = sp_gem_500
	}
	else if argument0 = 100
	{
		inst_gem.sprite_index = sp_gem_100
	}
	else if argument0 = 50
	{
		inst_gem.sprite_index = sp_gem_50
	}
	else if argument0 = 10
	{
		inst_gem.sprite_index = sp_gem_10
	}
	else if argument0 = 5
	{
		inst_gem.sprite_index = sp_gem_5
	}
	else if argument0 = 1
	{
		inst_gem.sprite_index = sp_gem_1
	}
}