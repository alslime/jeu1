// argument0 = o_enemy
// argument1 = inst_blood
function create_blood()
{
	test_colour = irandom(2)
	if test_colour == 0
	{
		argument1.blood_colour = argument0.blood_colour1
	}
	if test_colour == 1
	{
		argument1.blood_colour = argument0.blood_colour2
	}
	if test_colour == 2
	{
		argument1.blood_colour = argument0.blood_colour3
	}
	argument1.phy_position_y = argument0.vweapon.y
	argument1.phy_speed_y = random_range(-1,1)

	nearest_weapon = instance_nearest(argument0.x + argument0.sprite_width/2,argument0.y + argument0.sprite_height/2,o_weapon)
	if instance_exists(o_weapon)
	{
		dir_to_weapon = point_direction(argument0.x + argument0.sprite_width/2,argument0.y + argument0.sprite_height/2,nearest_weapon.x + nearest_weapon.sprite_width/2, nearest_weapon.y + nearest_weapon.sprite_height/2)
	}
	
	if dir_to_weapon <= 90 || dir_to_weapon >= 270
	{
		argument1.phy_position_x = argument0.vweapon.x - argument0.vweapon.sprite_width
		argument1.phy_speed_x = random_range(-3,-6)
	}
	else if dir_to_weapon >= 90 && dir_to_weapon <= 270
	{
		argument1.phy_position_x = argument0.vweapon.x + argument0.vweapon.sprite_width
		argument1.phy_speed_x = random_range(3,6)
	}
}