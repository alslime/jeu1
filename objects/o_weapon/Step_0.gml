// Combo
#region

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
if owner.jump
{
	combo_0 = 1
}
if combo_0 == 1
{
	current_combo_idx = 0
	combo_1 = 0
	combo_finish_1 = 0
	combo_2 = 0
	combo_finish_2 = 0
	combo_3 = 0
	combo_finish_3 = 0
	temp_position_x = 0
	temp_position_y = 0
	temp_rotation = 0
}

#endregion

// Combo Weapons
#region

if combo_1 == 1
{
	if combo1_start == true
	{
		current_combo_idx = 1
		combo1_start = false
		i = 0
		combo_x = 0
		combo_y = 0
		combo_rot = 0
	}
	current_combo_idx = 1
	i += 1/3
	temp_position_x = anim_x[0,i]
	temp_position_y = anim_y[0,i]
	temp_rotation = anim_rot[0,i]
}
if combo_2 == 1 && combo_finish_1 <= 0
{
	if combo2_start == true
	{
		current_combo_idx = 2
		combo2_start = false
		i = 0
		temp_position_x = 0
		temp_position_y = 0
		temp_rotation = 0
	}
	i += 1/3
	temp_position_x = anim_x[1,i]
	temp_position_y = anim_y[1,i]
	temp_rotation = anim_rot[1,i]
}
if combo_3 == 1 && combo_finish_2 <= 0
{
	if combo3_start == true
	{
		current_combo_idx = 3
		combo3_start = false
		i = 0
		temp_position_x = 0
		temp_position_y = 0
		temp_rotation = 0
	}
	i += 1/3
	temp_position_x = anim_x[2,i]
	temp_position_y = anim_y[2,i]
	temp_rotation = anim_rot[2,i]
}
if combo_1 == 0 && combo_finish_1 <= 0 && combo_2 == 0 && combo_finish_2 <= 0 && combo_3 == 0 && combo_finish_3 <= 0
{
	current_combo_idx = 0
	combo_0 = 1
	temp_position_x = 0
	temp_position_y = 0
	temp_rotation = 0
	i = 0
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
		combo_finish_3 = combo_finish_3_value
	}
	if combo_1 == 1
	{
		combo2_start = true
		combo_2 = 1
		combo_finish_2 = combo_finish_2_value
	}
	if combo_0 == 1
	{
		combo1_start = true
		combo_0 = 0
	    combo_1 = 1
		combo_finish_1 = combo_finish_1_value
	}
}

#endregion

// X/Y/Rot
#region

combo_x = temp_position_x + owner.sprite_width/2 - sprite_width/2 + mod_x
combo_y = temp_position_y + owner.sprite_height/2 - sprite_height/2 + mod_y
combo_rot = temp_rotation

#endregion