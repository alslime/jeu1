// Collision with weapon and set damage 
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

// Set damage
dmg = vweapon.base_dmg[current_weapon_combo - 1]

// Do we need to decrement our HP ?
if	col_with_weapon && current_weapon_combo != last_contact_combo_idx && current_weapon_combo != 0
{
	hplost += dmg
	last_contact_combo_idx = current_weapon_combo
	in_hit_text = instance_create_layer(x,y,"lay_front",o_hit_text)
	in_hit_text.dmg = dmg
	in_hit_text.x = x + sprite_width/2
	in_hit_text.y = y - 16
	// Blood
	for (i = 0; i < amount_of_blood; i += 1)
	{
		inst_blood = instance_create_layer(x,y,"lay_front",o_blood)
		script_execute (create_blood,id,inst_blood)
	}
}

#endregion

// Die
#region

if hplost >= hpmax
{
	instance_destroy()
	script_execute(create_essence,essence_drop_value,x,y)
}

#endregion



// Moving algorithm
#region

state_countdown -= 1
if state_countdown <= 0
{
	state_countdown = state_countdown_time
	state = irandom(2)
}
// State 0 = do not move
// State 1 = left
// State 2 = right
if state = 0 
{
	phy_speed_x = 0
}
else if state = 1
{
	phy_speed_x = -1
}
else if state = 2
{
	phy_speed_x = 1
}

#endregion
