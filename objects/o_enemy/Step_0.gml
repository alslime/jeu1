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

dir_to_hero = point_direction(x, y, inst_hero.x + inst_hero.sprite_width/2, inst_hero.y + inst_hero.sprite_height/2)

x1 = x
x2 = x1 + sprite_width
y1 = y + sprite_height + 1

if collision_line (x1,y1,x2,y1,o_ground,false,true)
{
 	jump = false
}
else
{
	jump = true
}
if jump
{
	state = last_state
}

if distance_to_object(inst_hero) > 200
{
	follow_hero = false
	state_countdown -= 1
	if state_countdown <= 0
	{
		state_countdown = state_countdown_time
		if !jump
		{
			state = irandom(2)
		}
	}
}
else
{
	follow_hero = true
	if dir_to_hero < 70 || dir_to_hero > 290
	{
		state = 2
	}
	else if dir_to_hero > 110 && dir_to_hero < 250
	{
		state = 1
	}
}
// State 0 = do not move
// State 1 = left	
// State 2 = right
if !collision_point(x2+1,y1,o_ground,false,false) || collision_line(x2+1,y,x2+1,y1-1,o_ground,false,true)
{
	if follow_hero = true && (dir_to_hero < 70 || dir_to_hero > 290)
	{
		state = 0
	}
	else						
	{
		state = 1
	}
}
if !collision_point(x1-1,y1,o_ground,false,false) || collision_line(x1-1,y,x1-1,y1-1,o_ground,false,true)
{
	if follow_hero = true && (110 && dir_to_hero < 250)
	{
		state = 0
	}
	else
	{
		state = 2
	}
}
if state = 0 
{
	if last_state == 1
	{
		sprite_index = sp_e_l
	}
	else if last_state == 2
	{
		sprite_index = sp_e_r
	}
	phy_speed_x = 0
	last_state = 0
}
else if state = 1
{
	if follow_hero = true
	{
		phy_speed_x = -follow_spd
	}
	else
	{
		phy_speed_x = -spd
	}
	sprite_index = sp_e_walk_l
	last_state = 1
}
else if state = 2
{
	if follow_hero = true
	{
		phy_speed_x = follow_spd
	}
	else
	{
		phy_speed_x = spd
	}
	sprite_index = sp_e_walk_r
	last_state = 2
}

// To not fall but is weird and stops before if speed is to high
if !collision_point(x1 + 10*phy_speed_x,y1,o_ground,false,false)
{
	n = 0
	while collision_point(x1 + n,y1,o_ground,false,false) && n > 10*phy_speed_x
	{
		n -= 1
	}
	phy_speed_x = 0.1*n
}
if !collision_point(x2 + 10*phy_speed_x,y1,o_ground,false,false)
{
	n = 0
	while collision_point(x2 + n,y1,o_ground,false,false) && n < 10*phy_speed_x
	{
		n += 1
	}
	phy_speed_x = 0.1*n
}

#endregion