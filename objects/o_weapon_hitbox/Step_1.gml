if instance_exists(o_weapon)
{
	vweapon = instance_find(o_weapon,0)
}

// Get the current weapon combo index
current_weapon_combo = vweapon.current_combo_idx

// Track if the weapon combo has changed since the last step
if current_weapon_combo != last_combo_idx
{
	hitbox_active = true
}

last_combo_idx = current_weapon_combo