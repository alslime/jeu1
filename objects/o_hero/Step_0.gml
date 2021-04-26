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
}
else
{
	jump_value = 6
	walk_speed = 2
	dash_speed = 4
}

#endregion

