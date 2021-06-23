//Weapon Chosen
#region

if chosen_weapon == "fists"
{	
	weapon_icon.weapon_selected = "Fists"
	weapon_icon.sprite_index = sp_new_fist_icon
	weapon_icon.sprite_contour = sp_contour_new_fist_icon
	vweapon = inst_fist
	se_1 = se_punch1
	se_2 = se_punch2
	se_3 = se_punch3
}
else if chosen_weapon == "light_sword"
{
	weapon_icon.weapon_selected = "Light Sword"
	weapon_icon.sprite_index = sp_new_light_sword_icon
	weapon_icon.sprite_contour = sp_contour_light_sword_icon
	vweapon = inst_light_sword
	se_1 = se_light_sword1
	se_2 = se_light_sword2
	se_3 = se_light_sword3
}
else if chosen_weapon == "great_sword"
{
	weapon_icon.weapon_selected = "Great Sword"
	weapon_icon.sprite_index = sp_new_great_sword_icon
	weapon_icon.sprite_contour = sp_contour_great_sword_icon
	vweapon = inst_great_sword
	se_1 = se_great_sword1
	se_2 = se_great_sword2
	se_3 = se_great_sword3
}

#endregion

//Support Chosen
#region

if chosen_support == "heal"
{
	utility_icon.utility_selected = "Heal"
	utility_icon.sprite_index = sp_new_heal_icon
}

#endregion



//Parralax Background
#region

if layer_exists("bg_1")
{
	layer_x("bg_1",camera_get_view_x(view_camera[0])/8)
}
if layer_exists("bg_2")
{
	layer_x("bg_2",camera_get_view_x(view_camera[0])/10)
}

#endregion

// Disable rotation
phy_fixed_rotation = true

//In water
#region

if place_meeting(x,y,o_water)
{
	jump_value = jump_init_value div 2
	walk_speed = walk_init_speed div 2
	dash_speed = dash_init_speed div 2
	physics_apply_local_force(0,0,0,-3100)
	if phy_speed_y > 8
	{
		phy_speed_y = 8
	}
}
else
{
	jump_value = jump_init_value
	walk_speed = walk_init_speed
	dash_speed = dash_init_speed
}

water = instance_nearest(x,y,o_water)

if collision_line(water.x,water.y,water.x+water.sprite_width,water.y,id,false,false) && phy_speed_x != 0
{
	i = abs(x + sprite_width/2 - water.x)
	if i < 4
	{
		i = 4
	}
	if i > water.sprite_width - 4
	{
		i = water.sprite_width - 4
	}
	if need_to_destroy_splash == false
	{
		splash_inst = instance_create_layer(water.x+i,water.y,"lay_front",o_water_splash_long)
		need_to_destroy_splash = true
		
	}
	splash_inst.x = water.x + i
	splash_inst.y = water.y
}
else
{
	if need_to_destroy_splash == true
	{
		instance_destroy(splash_inst)
	}
	need_to_destroy_splash = false
}

if need_to_destroy_splash == false
{
	splash_water(id)
}

#endregion

