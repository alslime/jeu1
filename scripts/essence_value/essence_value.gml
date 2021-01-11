// argument0 = inst_essence
// argument1 = evalue
function essence_value()
{
	argument0.phy_speed_x = random_range(-4,4)
	argument0.phy_speed_y = random_range(-4,4)
	argument0.countdown = 120
	argument0.essValue = argument1

	if argument1 = 1000
	{
		argument0.sprite_index = sp_essence1000
	}
	else if argument1 = 500
	{
		argument0.sprite_index = sp_essence500
	}
	else if argument1 = 100
	{
		argument0.sprite_index = sp_essence100
	}
	else if argument1 = 50
	{
		argument0.sprite_index = sp_essence50
	}
	else if argument1 = 10
	{
		argument0.sprite_index = sp_essence10
	}
	else if argument1 = 5
	{
		argument0.sprite_index = sp_essence5
	}
	else if argument1 = 1
	{
		argument0.sprite_index = sp_essence1
	}
}