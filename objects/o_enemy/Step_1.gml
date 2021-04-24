if instance_exists(o_weapon)
{
	vweapon = instance_find(o_weapon,0)
}


// Collision with weapon and set damage 
#region

// Are we collinding with a weapon ?
col_with_weapon = place_meeting(x, y,o_weapon_hitbox)

// Get the current weapon combo index
current_weapon_combo = vweapon.current_combo_idx

// Set damage
dmg = vweapon.base_dmg[current_weapon_combo - 1]

if instance_exists(o_weapon_hitbox)
{
	vweapon_hitbox = instance_nearest(x,y,o_weapon_hitbox)
	col_id = vweapon_hitbox.id

	// Do we need to decrement our HP ?
	if	col_with_weapon && current_weapon_combo != 0
	{
		can_be_hit = true
		for (z = 0; z < array_length(id_array); z += 1)
		{
			if col_id == id_array[z]
			{
				can_be_hit = false
				break
			}
		}
		if can_be_hit == true
		{
			prevhp_lost = hplost
			hplost += dmg
			can_be_hit = false
			in_hit_text = instance_create_layer(x,y,"lay_game_front",o_hit_text)
			in_hit_text.dmg = dmg
			in_hit_text.x = x + sprite_width/2
			in_hit_text.y = y - 16
			array_insert(id_array,0,col_id)
			hit_state_begin = true
			countdown = 45
			if inst_hero.energylost > 0
			{
				inst_hero.energylost -= 1
			}
		}
	}
}
if prevhp_lost != hplost
{
	// Blood
	for (i = 0; i < amount_of_blood; i += 1)
	{
		inst_blood = instance_create_layer(x,y,"lay_game_front",o_blood_particules)
		script_execute (create_blood,id,inst_blood)
	}
}
prevhp_lost = hplost

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

if countdown == 0
{
	if distance_to_object(inst_hero) > 60
	{
		follow_hero = false
		state_countdown -= 1
		if state_countdown <= 0
		{
			state_countdown = state_countdown_time
			if !jump
			{
				irdm = irandom(1)
				if irdm == 0
				{
					state = "stand"
				}
				else
				{
					state = "walk"
				}
				dir = irandom(1)
			}
		}
	}
	else
	{
		follow_hero = true
		state = "run"
		if dir_to_hero < 70 || dir_to_hero > 290
		{
			dir = 0
		}
		else if dir_to_hero > 110 && dir_to_hero < 250
		{
			dir = 1
		}
	}
	if !collision_point(x2+1,y1,o_ground,false,false) || collision_line(x2+1,y,x2+1,y1-1,o_ground,false,true)
	{
		if follow_hero == true && (dir_to_hero < 70 || dir_to_hero > 290)
		{
			state = "stand"
		}
		else if follow_hero == false
		{
			state = "walk"
			dir = 1
		}
	}
	if !collision_point(x1-1,y1,o_ground,false,false) || collision_line(x1-1,y,x1-1,y1-1,o_ground,false,true)
	{
		if follow_hero == true && dir_to_hero < 250 && dir_to_hero > 110
		{
			state = "stand"
		}
		else if follow_hero == false
		{
			state = "walk"
			dir = 0
		}
	}
}
if jump
{
	state = "jump"
}

#endregion

// To not fall
#region

if !collision_point(x1 + 10*phy_speed_x,y1,o_ground,false,false) && stop_at_corner_l == true
{
	n = 0
	while collision_point(x1 + n,y1,o_ground,false,false) && n > 10*phy_speed_x
	{
		n -= 1
	}
	phy_speed_x = 0.1*n
	stop_at_corner_l = false
}
else
{
	stop_at_corner_l = true
}
if !collision_point(x2 + 10*phy_speed_x,y1,o_ground,false,false) && stop_at_corner_r == true
{
	n = 0
	while collision_point(x2 + n,y1,o_ground,false,false) && n < 10*phy_speed_x
	{
		n += 1
	}
	phy_speed_x = 0.1*n
	stop_at_corner_r = false
}
else
{
	stop_at_corner_r = true
}

#endregion

// Bounce when hit or collision with hero
#region

nearest_hero = instance_nearest(x + sprite_width/2,y + sprite_height/2,o_hero)
if instance_exists(o_hero)
{
	dir_to_hero = point_direction(x + sprite_width/2, y + sprite_height/2,nearest_hero.x + nearest_hero.sprite_width/2, nearest_hero.y + nearest_hero.sprite_height/2)
}

if place_meeting (x,y,o_hero)
{
	hit_state_begin = true
	countdown = 30
}

if countdown > 0
{
	state = "hit"
    countdown = countdown - 1
    if dir_to_hero > 90 && dir_to_hero < 270
    {
		dir = 1
    }
    if dir_to_hero <= 90 || dir_to_hero >= 270
    {
		dir = 0
    }
}

#endregion

// States
#region

if state == "stand"
{
	if last_sequence_type != se_boulder_demon_stand
	{
		stand = layer_sequence_create("lay_enemies",x,y,se_boulder_demon_stand)
		layer_sequence_destroy(last_sequence)
		last_sequence = stand
		last_sequence_type = se_boulder_demon_stand
	}
	phy_speed_x = 0
}
if state == "walk"
{
	if last_sequence_type != se_boulder_demon_walk
	{
		walk = layer_sequence_create("lay_enemies",x,y,se_boulder_demon_walk)
		layer_sequence_destroy(last_sequence)
		last_sequence = walk
		last_sequence_type = se_boulder_demon_walk
	}
	if dir == 0
	{
		phy_speed_x = spd
	}
	else
	{
		phy_speed_x = -spd
	}
}
if state == "run"
{
	if last_sequence_type != se_boulder_demon_run
	{
		run = layer_sequence_create("lay_enemies",x,y,se_boulder_demon_run)
		layer_sequence_destroy(last_sequence)
		last_sequence = run
		last_sequence_type = se_boulder_demon_run
	}
	if dir == 0
	{
		phy_speed_x = follow_spd
	}
	else
	{
		phy_speed_x = -follow_spd
	}
}
if state == "jump"
{
	if last_sequence_type != se_boulder_demon_jump
	{
		was_jumping = true
		sejump = layer_sequence_create("lay_enemies",x,y,se_boulder_demon_jump)
		layer_sequence_destroy(last_sequence)
		last_sequence = sejump
		last_sequence_type = se_boulder_demon_jump
	}
	if was_jumping == true && jump == false
	{
		state = "stand"
		was_jumping = false
	}
}
if state == "hit"
{
	if hit_state_begin == true
	{
		hit = layer_sequence_create("lay_enemies",x,y,se_boulder_demon_hit)
		layer_sequence_destroy(last_sequence)
		last_sequence = hit
		last_sequence_type = se_boulder_demon_hit
		if dir == 1
		{
			phy_speed_x = 1
		}
		else if dir == 0
		{
			phy_speed_x = -1
		}
		hit_state_begin = false
	}
	if phy_speed_x > 0
	{
		phy_speed_x -= 0.05
	}
	else if phy_speed_x < 0
	{
		phy_speed_x += 0.05
	}
}

#endregion

// Die
#region

if hplost >= hpmax
{
	layer_sequence_destroy(last_sequence)
	instance_destroy()
	script_execute(create_gems,gem_drop_value,x,y)
	inst_hero.xp += xp_drop_value
}

#endregion

// Sequence follows enemy
#region

if dir == 0
{
	layer_sequence_x(last_sequence,x)
	layer_sequence_xscale(last_sequence,1)
}
else
{
	layer_sequence_x(last_sequence,x + sprite_width)
	layer_sequence_xscale(last_sequence,-1)
}
layer_sequence_y(last_sequence,y)

#endregion