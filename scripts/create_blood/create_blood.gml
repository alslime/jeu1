// argument0 = o_enemy
// argument1 = inst_blood
function create_blood()
{
	argument1.blood_colour = argument0.blood_colour
	argument1.phy_speed_y = irandom_range(-8,8)

	nearest_weapon = instance_nearest(argument0.x + argument0.sprite_width/2,argument0.y + argument0.sprite_height/2,o_weapon_hitbox)
	if instance_exists(o_weapon_hitbox)
	{
		dir_to_weapon = point_direction(argument0.x + argument0.sprite_width/2,argument0.y + argument0.sprite_height/2,nearest_weapon.x + nearest_weapon.sprite_width/2, nearest_weapon.y + nearest_weapon.sprite_height/2)
	}
	
	if dir_to_weapon <= 90 || dir_to_weapon >= 270
	{
		argument1.phy_speed_x = irandom_range(-3,-12)
	}
	else if dir_to_weapon >= 90 && dir_to_weapon <= 270
	{
		argument1.phy_speed_x = irandom_range(3,12)
	}
}