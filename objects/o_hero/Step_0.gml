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
	if (!jump)
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
		//if( combo_finish_1 == 8 )
	    //{
	    //image_index = 0
	    //}
		combo_finish_1 -= 1
		if combo_finish_1 == 0
		{
			combo_1 = 0
			combo_finish_1 = -1
		}
	}
	if combo_finish_2 > 0 && combo_finish_1 <= 0
	{
		//if( combo_finish_2 == 8 )
	    //{
		//	image_index = 0
	    //}
	    combo_finish_2 -= 1
		if combo_finish_2 == 0
		{
			combo_2 = 0
			combo_finish_2 = -1
		}
	}
	if combo_finish_3 > 0 && combo_finish_2 <= 0
	{
		//if combo_finish_3 == 24
	    //{
	    //image_index = 0
	    //}
	    combo_finish_3 -= 1
		if combo_finish_3 == 0
	    {
			combo_3 = 0
			combo_finish_3 = -1
	    }
	}
}
if (!jump)
{
	combo_0 = 1
	combo_1 = 0
	combo_2 = 0
	combo_3 = 0
}

#endregion

// Combo Weapons
#region

//if (!keyboard_check ( ord('W') ) ) à changer si on veut attaque en haut
if combo_1 == 1
{
    vweapon.visible = 1
	if weapon == spear
	{
		if dir == 0
		{
			vweapon.sprite_index = spear1_r
		}
		else if dir == 180
		{
			vweapon.sprite_index = spear1_l
		}
	}
if weapon == 1
{
	//sprite_index = sword1r
}
if combo_2 == 1 && combo_finish_1 <= 0
{
	vweapon.visible = 1
    if weapon == 0
	{
        vweapon.sprite_index = combofist2r
    }
}
if combo_3 == 1 && combo_finish_2 <= 0
{
	vweapon.visible = 1
    if weapon == 0
    {
		sprite_index = fist3r;
		vweapon.sprite_index = combofist3r
    }
}
if combo_1 == 0 && combo_finish_1 <= 0 && combo_2 == 0 && combo_finish_2 <= 0 && combo_3 == 0 && combo_finish_3 <= 0
{
	combo_0 = 1
    vweapon.visible = 0
    //if hspeed == 0                Pas sur que j'en ai besoin mais a verifier
    //{
	//	sprite_index = Character_R
    //}
    //else
    //{
	//	vweapon.visible = 0
	//	sprite_index = Character_R_Walk
    //}
}

#endregion

// Attack
#region

if mouse_check_button_pressed (mb_left)
{
	if combo_2 == 1
	{
		combo_3 = 1
		combo_finish_3 = 24
	}

	if combo_1 == 1
	{
	  combo_2 = 1;
	  combo_finish_2 = 8
	}

	if combo_0 == 1
	{
	  combo_0 = 0
	  combo_1 = 1
	  combo_finish_1 = 8
	}
}

#endregion