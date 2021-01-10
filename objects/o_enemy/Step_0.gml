// Collision with Weapon
#region

// Are we collinding with a weapon ?
col_with_weapon = physics_test_overlap(x, y, 0, o_weapon)

// Get the current weapon combo index
current_weapon_combo = vweapon.current_combo_idx

// Track if the weapon combo has changed since the last step
if( current_weapon_combo != last_combo_idx )
{
	// It changed, let's consider the next contact as a 'hp-decrementing' contact
	last_contact_combo_idx = 0
}
last_combo_idx = current_weapon_combo

// Do we need to decrement our HP ?
if	col_with_weapon &&
	current_weapon_combo != last_contact_combo_idx &&
	current_weapon_combo != 0
{
	hplost += 1
	last_contact_combo_idx = current_weapon_combo
}


#endregion

// Die
#region

if hplost >= hpmax
{
	hplost = 0
}

#endregion