if instance_exists(o_weapon)
{
	vweapon = instance_find(o_weapon,0)
}
if instance_exists(o_weapon_hitbox)
{
	vweapon_hitbox = instance_nearest(x,y,o_weapon_hitbox)
}

// Collision with weapon and set damage 
#region

// Are we collinding with a weapon ?
col_with_weapon = place_meeting(x, y,o_weapon_hitbox)

// Get the current weapon combo index
current_weapon_combo = vweapon.current_combo_idx

// Set damage
dmg = vweapon.base_dmg[current_weapon_combo - 1]

// Do we need to decrement our HP ?
if	col_with_weapon && current_weapon_combo != 0 && vweapon_hitbox.hitbox_active == true
{
	prevhp_lost = hplost
	hplost += dmg
	vweapon_hitbox.hitbox_active = false
	in_hit_text = instance_create_layer(x,y,"lay_front",o_hit_text)
	in_hit_text.dmg = dmg
	in_hit_text.x = x + sprite_width/2
	in_hit_text.y = y - 16
}
if prevhp_lost != hplost
{
	// Blood
	for (i = 0; i < amount_of_blood; i += 1)
	{
		inst_blood = instance_create_layer(x,y,"lay_game_front",o_blood)
		script_execute (create_blood,id,inst_blood)
	}
}
prevhp_lost = hplost

#endregion

// Die
#region

if hplost >= hpmax
{
	layer_sequence_destroy(last_sequence)
	instance_destroy()
	script_execute(create_gear,gear_drop_value,x,y)
}

#endregion

// Moving algorithm
#region

dir_to_hero = point_direction(x, y, inst_hero.x + inst_hero.sprite_width/2, inst_hero.y + inst_hero.sprite_height/2)

x1 = x
x2 = x1 + sprite_width
y1 = y + sprite_height + 1

if countdown == 0
{
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
		state = "jump"
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
	// State 0 = do not move
	// State 1 = left	
	// State 2 = right
	if !collision_point(x2+1,y1,o_ground,false,false) || collision_line(x2+1,y,x2+1,y1-1,o_ground,false,true)
	{
		if follow_hero = true && (dir_to_hero < 70 || dir_to_hero > 290)
		{
			state = "stand"
		}
		else						
		{
			state = "walk"
			dir = 1
		}
	}
	if !collision_point(x1-1,y1,o_ground,false,false) || collision_line(x1-1,y,x1-1,y1-1,o_ground,false,true)
	{
		//dir = 0
		if follow_hero = true && (110 && dir_to_hero < 250)
		{
			state = "stand"
		}
		else
		{
			state = "walk"
			dir = 0
		}
	}
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

// Bounce when hit
#region

if place_meeting(x,y,o_weapon_hitbox)
{
	if countdown == 0 && inst_hero.vweapon.combo_0 != 1
	{
		countdown = 20
	}
}
nearest_hero = instance_nearest(x + sprite_width/2,y + sprite_height/2,o_hero)
if instance_exists(o_hero)
{
	dir_to_hero = point_direction(x + sprite_width/2, y + sprite_height/2,nearest_hero.x + nearest_hero.sprite_width/2, nearest_hero.y + nearest_hero.sprite_height/2)
}

if countdown > 0
{
	state = "hit"
    countdown = countdown - 1
    if dir_to_hero > 90 && dir_to_hero < 270
    {
		dir = 1
		phy_speed_x = 0.5
		//sprite_index = sp_hero_hit_l
    }
    if dir_to_hero <= 90 || dir_to_hero >= 270
    {
		dir = 0
		phy_speed_x = -0.5
		//sprite_index = sp_hero_hit_r
    }
}

#endregion

// States
if state == "stand"
{
	if last_sequence_type != se_spider_stand
	{
		stand = layer_sequence_create("lay_enemies",x,y,se_spider_stand)
		layer_sequence_destroy(last_sequence)
		last_sequence = stand
		last_sequence_type = se_spider_stand
	}
	phy_speed_x = 0
}
if state == "walk"
{
	if last_sequence_type != se_spider_stand
	{
		stand = layer_sequence_create("lay_enemies",x,y,se_spider_stand)
		layer_sequence_destroy(last_sequence)
		last_sequence = stand
		last_sequence_type = se_spider_stand
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
	if last_sequence_type != se_spider_stand
	{
		stand = layer_sequence_create("lay_enemies",x,y,se_spider_stand)
		layer_sequence_destroy(last_sequence)
		last_sequence = stand
		last_sequence_type = se_spider_stand
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
	if last_sequence_type != se_spider_stand
	{
		stand = layer_sequence_create("lay_enemies",x,y,se_spider_stand)
		layer_sequence_destroy(last_sequence)
		last_sequence = stand
		last_sequence_type = se_spider_stand
	}
}

// Sequence follows player
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