// argument0 = inst_essence
// argument1 = evalue
function gear_value()
{
	argument0.phy_speed_x = random_range(-3,3)
	argument0.phy_speed_y = random_range(-3,3)
	argument0.countdown = 120
	argument0.gearValue = argument1

	if argument1 = 1000
	{
		argument0.sprite_index = sp_gear1000
	}
	else if argument1 = 500
	{
		argument0.sprite_index = sp_gear500
	}
	else if argument1 = 100
	{
		argument0.sprite_index = sp_gear100
	}
	else if argument1 = 50
	{
		argument0.sprite_index = sp_gear50
	}
	else if argument1 = 10
	{
		argument0.sprite_index = sp_gear10
	}
	else if argument1 = 5
	{
		argument0.sprite_index = sp_gear5
	}
	else if argument1 = 1
	{
		argument0.sprite_index = sp_gear1
	}
}