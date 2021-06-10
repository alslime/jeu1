if os_type == os_ios || os_type == os_android
{
	attack_key = keyboard_check_pressed(ord("H"))
}
else
{
	attack_key = mouse_check_button_pressed (mb_left) || gamepad_button_check_pressed(0,gp_face3) || keyboard_check_pressed(ord("K"))
}

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

if attack_key && owner.can_attack == true
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

if (familiarity_points >= familiarity_max_points) && (familiarity_level < 100)
{
	familiarity_points = familiarity_points - familiarity_max_points
	familiarity_max_points += 25
	familiarity_level += 1
}