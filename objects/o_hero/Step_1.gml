// Jump
#region

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
if keyboard_check_pressed (vk_space) && (!jump)
{
	phy_speed_y = -9
}

#endregion

// Movments left/right && Dash
#region

if keyboard_check_pressed(ord("A"))
{
	dir = 180
}
if keyboard_check_pressed( ord("D") )
{
	dir = 0
}
if keyboard_check( ord("A") ) && keyboard_check( ord("D") )
{
	if dir == 180
	{
		phy_speed_x = -4
	    if (!jump)
	    {
			if last_sequence_type != se_walk
			{
				walk = layer_sequence_create("lay_hero",x,y,se_walk)
				layer_sequence_destroy(last_sequence)
				last_sequence = walk
				last_sequence_type = se_walk
			}
			layer_sequence_xscale(walk,-1)
			image_xscale = -1
	    }
	    else if jump
	    {
		    if last_sequence_type != se_jump
			{
				sejump = layer_sequence_create("lay_hero",x,y,se_jump)
				layer_sequence_destroy(last_sequence)
				last_sequence = sejump
				last_sequence_type = se_jump
			}
			layer_sequence_xscale(sejump,-1)
			image_xscale = -1
	    }
	}
	else if dir == 0
	{
	    phy_speed_x = 4
	    if (!jump)
	    {
			if last_sequence_type != se_walk
			{
				walk = layer_sequence_create("lay_hero",x,y,se_walk)
				layer_sequence_destroy(last_sequence)
				last_sequence = walk
				last_sequence_type = se_walk
			}
			layer_sequence_xscale(walk,1)
			image_xscale = 1
	    }
	    else if jump
	    {
		    if last_sequence_type != se_jump
			{
				sejump = layer_sequence_create("lay_hero",x,y,se_jump)
				layer_sequence_destroy(last_sequence)
				last_sequence = sejump
				last_sequence_type = se_jump
			}
			layer_sequence_xscale(sejump,1)
			image_xscale = 1
		}
	}
}
else if keyboard_check( ord("A") )
{
	phy_speed_x = -4
	dir = 180
	if (!jump)
	{
		if last_sequence_type != se_walk
		{
			walk = layer_sequence_create("lay_hero",x,y,se_walk)
			layer_sequence_destroy(last_sequence)
			last_sequence = walk
			last_sequence_type = se_walk
		}
		layer_sequence_xscale(walk,-1)
		image_xscale = -1
	}
	else if jump
	{
		if last_sequence_type != se_jump
		{
			sejump = layer_sequence_create("lay_hero",x,y,se_jump)
			layer_sequence_destroy(last_sequence)
			last_sequence = sejump
			last_sequence_type = se_jump
		}
		layer_sequence_xscale(sejump,-1)
		image_xscale = -1
	}
}
else if keyboard_check( ord("D") )
{
	phy_speed_x = 4
	dir = 0
	if (!jump)
	{
		if last_sequence_type != se_walk
		{
			walk = layer_sequence_create("lay_hero",x,y,se_walk)
			layer_sequence_destroy(last_sequence)
			last_sequence = walk
			last_sequence_type = se_walk
		}
		layer_sequence_xscale(walk,1)
		image_xscale = 1
	}
	else if jump
	{
		if last_sequence_type != se_jump
		{
			sejump = layer_sequence_create("lay_hero",x,y,se_jump)
			layer_sequence_destroy(last_sequence)
			last_sequence = sejump
			last_sequence_type = se_jump
		}
		layer_sequence_xscale(sejump,1)
		image_xscale = 1
	}
}
else
{
	phy_speed_x = 0
	if (!jump) && (!regen)
	{
		if (dir == 180)
		{
			if last_sequence_type != se_stand
			{
				stand = layer_sequence_create("lay_hero",x,y,se_stand)
				layer_sequence_destroy(last_sequence)
				last_sequence = stand
				last_sequence_type = se_stand
			}
			layer_sequence_xscale(stand,-1)
			image_xscale = -1
		}
		else if (dir == 0)
		{
			if last_sequence_type != se_stand
			{
				stand = layer_sequence_create("lay_hero",x,y,se_stand)
				layer_sequence_destroy(last_sequence)
				last_sequence = stand
				last_sequence_type = se_stand
			}
			layer_sequence_xscale(stand,1)
			image_xscale = 1
		}
	}
	else if jump
	{
		if (dir == 180)
		{
		    if last_sequence_type != se_jump
			{
				sejump = layer_sequence_create("lay_hero",x,y,se_jump)
				layer_sequence_destroy(last_sequence)
				last_sequence = sejump
				last_sequence_type = se_jump
			}
			layer_sequence_xscale(sejump,-1)
			image_xscale = -1
		}
		else if (dir == 0)
		{
		if last_sequence_type != se_jump
		{
			sejump = layer_sequence_create("lay_hero",x,y,se_jump)
			layer_sequence_destroy(last_sequence)
			last_sequence = sejump
			last_sequence_type = se_jump
		}
		layer_sequence_xscale(sejump,1)
		image_xscale = 1
		}
	}
}

// Dash

if dash_time > 0
{
	if dash_begin = true
	{
		aftimg_interval = 2
		dash_begin = false
	}
	//afterimage
	aftimg_interval -= 1
	if aftimg_interval == 0
	{
		aftimg_interval = 2
		inst_aftimg = instance_create_layer(x,y,"lay_hero",o_afterimage)
		script_execute (afterimage,inst_aftimg,id,10)
	}
	dash_time = dash_time - 1
	if dash_dir == 0
	{
		//sprite_index = sp_hero_dash_r
		phy_speed_x = 8
	}
	else if dash_dir == 180
	{
		//sprite_index = sp_hero_dash_l
		phy_speed_x = -8
	}
}
if dash_wait > 0
{
	dash_wait = dash_wait - 1
}
if keyboard_check_pressed(vk_shift) && dash_wait == 0
{
	dash_begin = true
	dash_time = 20
	dash_wait = 50
	if dir == 0
	{
		dash_dir = 0
	}
	else if dir == 180
	{
		dash_dir = 180
	}
}

#endregion

// Die
#region

if hplost >= hpmax
{
	hplost = 0
}

#endregion

// Max hp/energy up
#region

if keyboard_check_pressed (ord("W"))
{
	hpmax += 5
	energymax += 5
}

#endregion

// Regen
#region

if keyboard_check (ord("S")) && (hplost > 0) && (!jump) && (energylost < energymax)
{
    regen = true
	hplost = hplost - 1
    energylost += 2
    phy_speed_x = 0
    if dir == 0
    {
        //sprite_index = sp_hero_regen_r
    }
    else if dir == 180
    {
        //sprite_index = sp_hero_regen_l
    } 
}
else
{
	regen = false
}

#endregion

// Hit
#region

if place_meeting (x,y,o_enemy) && dash_time == 0
{
	if countdown == 0
	{
		hplost += nearest_enemy.enemy_dmg
		countdown = 10
	}
}

#endregion

// Bounce when hit
#region

nearest_enemy = instance_nearest(x + sprite_width/2,y + sprite_height/2,o_enemy)
if instance_exists(o_enemy)
{
	dir_to_enemy = point_direction(x + sprite_width/2, y + sprite_height/2,nearest_enemy.x + nearest_enemy.sprite_width/2, nearest_enemy.y + nearest_enemy.sprite_height/2)
}

if countdown > 0
{
    countdown = countdown - 1
	if dir_to_enemy > 180
	{
		phy_speed_y = -lengthdir_y(2,dir_to_enemy)
	}
    if dir_to_enemy > 90 && dir_to_enemy < 270
    {
		phy_speed_x = 5
		//sprite_index = sp_hero_hit_l
		dir = 180
    }
    if dir_to_enemy <= 90 || dir_to_enemy >= 270
    {
		phy_speed_x = -5
		//sprite_index = sp_hero_hit_r
		dir = 0
    }
}

#endregion
