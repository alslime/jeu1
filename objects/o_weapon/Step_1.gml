// Combo
#region

if owner.dash_time != 0
{
	combo_0 = 1
}
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
if combo_0 == 1
{
	current_combo_idx = 0
	combo_1 = 0
	combo_finish_1 = 0
	combo_2 = 0
	combo_finish_2 = 0
	combo_3 = 0
	combo_finish_3 = 0
}

#endregion

// Combo Weapons
#region

if combo_1 == 1
{
	current_combo_idx = 1
}
if combo_2 == 1 && combo_finish_1 <= 0
{
	current_combo_idx = 2
}
if combo_3 == 1 && combo_finish_2 <= 0
{
	current_combo_idx = 3
}
if combo_1 == 0 && combo_finish_1 <= 0 && combo_2 == 0 && combo_finish_2 <= 0 && combo_3 == 0 && combo_finish_3 <= 0
{
	current_combo_idx = 0
	combo_0 = 1
}

#endregion

// Attack
#region

if mouse_check_button_pressed (mb_left)
{
	if combo_2 == 1
	{
		combo_3 = 1
		combo_finish_3 = combo3_length
	}
	if combo_1 == 1
	{
		combo_2 = 1
		combo_finish_2 = combo2_length
	}
	if combo_0 == 1
	{
		combo_0 = 0
	    combo_1 = 1
		combo_finish_1 = combo1_length
	}
}

#endregion
