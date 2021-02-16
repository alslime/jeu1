//Choose weapon
#region

if keyboard_check_pressed(ord("1"))
{
	instance_destroy (vweapon)
	vweapon = instance_create_layer(x,y,"lay_weapon",o_spear)
	vweapon.owner = id
}
if keyboard_check_pressed(ord("2"))
{
	instance_destroy (vweapon)
	vweapon = instance_create_layer(x,y,"lay_weapon",o_blade)
	vweapon.owner = id
}

#endregion

// Disable rotation
phy_fixed_rotation = true




