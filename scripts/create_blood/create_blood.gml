// argument0 = amount_of_blood
function create_blood()
{
	for (i = 0; i < amount_of_blood; i += 1)
	{
		inst_blood = instance_create_layer(x,y,"lay_front",o_blood_particules)
		inst_blood.blood_colour = blood_colour
		inst_blood.phy_speed_y = irandom_range(-8,8)

		nearest_weapon = instance_nearest(x + sprite_width/2,y + sprite_height/2,o_weapon_hitbox)
		if instance_exists(o_weapon_hitbox)
		{
			dir_to_weapon = point_direction(x + sprite_width/2,y + sprite_height/2,nearest_weapon.x + nearest_weapon.sprite_width/2, nearest_weapon.y + nearest_weapon.sprite_height/2)
		}
	
		if dir_to_weapon <= 90 || dir_to_weapon >= 270
		{
			inst_blood.phy_speed_x = irandom_range(-3,-12)
		}
		else if dir_to_weapon >= 90 && dir_to_weapon <= 270
		{
			inst_blood.phy_speed_x = irandom_range(3,12)
		}
	}
}