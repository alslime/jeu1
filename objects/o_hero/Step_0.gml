// Disable rotation
phy_fixed_rotation = true

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

// Movments left/right
#region

if keyboard_check_pressed(ord("A")) //&&  ( !Collision_Wall_L(self) ) && (combo_1 = 0) && (combo_2 = 0) && (combo_3 = 0)
{
	dir = 180
}
if keyboard_check_pressed( ord("D") ) // && ( !Collision_Wall_R( self) ) && (combo_1 = 0) && (combo_2 = 0) && (combo_3 = 0)
{
	dir = 0
}
if keyboard_check( ord("A") ) && keyboard_check( ord("D") ) //&& (combo_1 = 0) && (combo_2 = 0) && (combo_3 = 0)
{
	if dir == 180 //&&  ( !Collision_Wall_L(self) )
	{
		phy_speed_x = -4
	    if (!jump)
	    {
	        sprite_index = sp_hero_walk_l
	    }
	    else if jump
	    {
	        sprite_index = sp_hero_jump_l
	    }
	}
	else if dir == 0 //&& ( !Collision_Wall_R(self) )
	{
	    phy_speed_x = 4
	    if (!jump)
	    {
	        sprite_index = sp_hero_walk_r
	    }
	    else if jump
	    {
	        sprite_index = sp_hero_r
		}
	}
}
else if keyboard_check( ord("A") ) // &&  ( !Collision_Wall_L(self) ) && (combo_1 = 0) && (combo_2 = 0) && (combo_3 = 0)
{
	phy_speed_x = -4
	dir = 180
	if (!jump)
	{
		sprite_index = sp_hero_walk_l
	}
	else if jump
	{
		sprite_index = sp_hero_jump_l
	}
}
else if keyboard_check( ord("D") ) // && ( !Collision_Wall_R( self) ) && (combo_1 = 0) && (combo_2 = 0) && (combo_3 = 0)
{
	phy_speed_x = 4
	dir = 0
	if (!jump)
	{
		sprite_index = sp_hero_walk_r
	}
	else if jump
	{
		sprite_index = sp_hero_jump_r
	}
}
else
{
	phy_speed_x = 0
	if (!jump) && (!regen)
	{
		if (dir == 180)
		{
		    sprite_index = sp_hero_l
		}
		else if (dir == 0)
		{
		    sprite_index = sp_hero_r
		}
	}
	else if jump
	{
		if (dir == 180)
		{
		    sprite_index = sp_hero_jump_l
		}
		else if (dir == 0)
		{
		    sprite_index = sp_hero_jump_r
		}
	}
}

#endregion

// Dash
#region

if dash_time > 0
{
	combo_0 = 1
	dash_time = dash_time - 1
	if dash_dir == 0
	{
		sprite_index = sp_hero_dash_r
		phy_speed_x = 8
	}
	else if dash_dir == 180
	{
		sprite_index = sp_hero_dash_l
		phy_speed_x = -8
	}
}
if dash_wait > 0
{
	dash_wait = dash_wait - 1
}
if keyboard_check_pressed(vk_shift) && dash_wait == 0
{
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

// Combo
#region

if (!jump)
{
	if combo_finish_1 > 0
	{
		combo_finish_1 -= 1
		if combo_finish_1 == 0
		{
			combo_1 = 0
			combo_finish_1 = -1
		}
	}
	if combo_finish_2 > 0 && combo_finish_1 <= 0
	{
	    combo_finish_2 -= 1
		if combo_finish_2 == 0
		{
			combo_2 = 0
			combo_finish_2 = -1
		}
	}
	if combo_finish_3 > 0 && combo_finish_2 <= 0
	{
	    combo_finish_3 -= 1
		if combo_finish_3 == 0
	    {
			combo_3 = 0
			combo_finish_3 = -1
	    }
	}
}
if (jump)
{
	combo_0 = 1
}
if combo_0 == 1
{
	combo_1 = 0
	combo_2 = 0
	combo_3 = 0
}

#endregion

// Combo Weapons
#region

if combo_1 == 1
{
	if combo1_start == true
	{
		vweapon.image_index = 0
		combo1_start = false
	}
	vweapon.visible = 1
	if weapon == "spear"
	{
		if dir == 0
		{
			vweapon.sprite_index = sp_spear1_r
		}
		else if dir == 180
		{
			vweapon.sprite_index = sp_spear1_l
		}
	}
}
if combo_2 == 1 && combo_finish_1 <= 0
{
	if combo1_start == true
	{
		vweapon.image_index = 0
		combo2_start = false
	}
    vweapon.visible = 1
	if weapon == "spear"
	{
		if dir == 0
		{
			vweapon.sprite_index = sp_spear2_r
		}
		else if dir == 180
		{
			vweapon.sprite_index = sp_spear2_l
		}
	}
}
if combo_3 == 1 && combo_finish_2 <= 0
{
	if combo3_start == true
	{
		vweapon.image_index = 0
		combo3_start = false
	}
	vweapon.visible = 1
	if weapon == "spear"
	{
		if dir == 0
		{
			vweapon.sprite_index = sp_spear3_r
		}
		else if dir == 180
		{
			vweapon.sprite_index = sp_spear3_l
		}
	}
}
if combo_1 == 0 && combo_finish_1 <= 0 && combo_2 == 0 && combo_finish_2 <= 0 && combo_3 == 0 && combo_finish_3 <= 0
{
	combo_0 = 1
    vweapon.visible = 0
}

#endregion

// Attack
#region

if mouse_check_button_pressed (mb_left)
{
	if combo_2 == 1
	{
		combo3_start = true
		combo_3 = 1
		if weapon == "spear"
		{
			combo_finish_3 = 40
		}
	}

	if combo_1 == 1
	{
		combo2_start = true
		combo_2 = 1
	    if weapon == "spear"
		{
			combo_finish_2 = 30
		}
	}

	if combo_0 == 1
	{
		combo1_start = 1
		combo_0 = 0
	    combo_1 = 1
	    if weapon == "spear"
		{
			combo_finish_1 = 30
		}
	}
}

#endregion

// Die
#region

if hplost == hpmax
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
    energylost -= 2
    phy_speed_x = 0
    if dir == 0
    {
        sprite_index = sp_hero_regen_r
    }
    else if dir == 180
    {
        sprite_index = sp_hero_regen_l
    } 
}
else
{
	regen = false
}

#endregion


// Energy
#region

if energylost > 0
{
energylost = energylost - 0.5
}

#endregion