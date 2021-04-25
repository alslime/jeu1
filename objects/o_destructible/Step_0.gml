if instance_exists(o_weapon)
{
	vweapon = instance_find(o_weapon,0)
}

col_with_weapon = place_meeting(x, y,o_weapon_hitbox)
current_weapon_combo = vweapon.current_combo_idx

if col_with_weapon && current_weapon_combo != 0
{
	instance_destroy()
		script_execute(create_gems,gem_drop_value,x,y)
}