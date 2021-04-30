equip_menu_key = keyboard_check_pressed(ord("I")) || gamepad_button_check_pressed(0,gp_select)

//Choose weapon
#region

if keyboard_check_pressed(ord("1"))
{
	instance_destroy (vweapon)
	vweapon = instance_create_layer(x,y,"lay_weapon",o_fist)
	vweapon.owner = id
}
if keyboard_check_pressed(ord("2"))
{
	instance_destroy (vweapon)
	vweapon = instance_create_layer(x,y,"lay_weapon",o_fist)
	vweapon.owner = id
}

#endregion

if equip_menu_key
{
	if equip_menu == false
	{
		equip_menu = true
	}
	else
	{
		equip_menu = false
	}
}
		

// Disable rotation
phy_fixed_rotation = true

//In water
#region

if place_meeting(x,y,o_water)
{
	physics_apply_local_force(0,0,0,-70)
	jump_value = 3
	walk_speed = 1
	dash_speed = 2
	if phy_speed_y > 3
	{
		phy_speed_y = 3
	}
}
else
{
	jump_value = 6
	walk_speed = 2
	dash_speed = 4
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

