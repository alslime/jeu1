//physics_fixture_add_point(fixture1, -sprite_width/2, sprite_height/2)
//physics_fixture_add_point(fixture1, -sprite_width/2, -sprite_height/2)
//physics_fixture_add_point(fixture1, sprite_width/2, -sprite_height/2)
//physics_fixture_add_point(fixture1, sprite_width/2, sprite_height/2)
//physics_fixture_add_point(fix, 0,0);
//physics_fixture_add_point(fix, -40, -100);
//physics_fixture_add_point(fix, 40, -100);

// Combo
#region

if (!owner.jump)
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
if owner.jump
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
		image_index = 0
		combo1_start = false
		
		visible = 1
		if type == "spear"
		{
			physics_remove_fixture(id, fixbind)
			fixbind = physics_fixture_bind_ext(fix,id, 0, 0)
			if owner.dir == 0
			{
				sprite_index = sp_spear1_r
			}
			else if owner.dir == 180
			{
				sprite_index = sp_spear1_l
			}
		}
	}
}
if combo_2 == 1 && combo_finish_1 <= 0
{
	if combo2_start == true
	{
		image_index = 0
		combo2_start = false

	    visible = 1
		if type == "spear"
		{
			physics_remove_fixture(id, fixbind)
			fixbind = physics_fixture_bind_ext(fix,id, 0.1*(sprite_width/2), 0.1*(sprite_height/2))
			if owner.dir == 0
			{
				sprite_index = sp_spear2_r
			}
			else if owner.dir == 180
			{
				sprite_index = sp_spear2_l
			}
		}
	}
}
if combo_3 == 1 && combo_finish_2 <= 0
{
	if combo3_start == true
	{
		image_index = 0
		combo3_start = false

		visible = 1
		if type == "spear"
		{
			physics_remove_fixture(id, fixbind)
			fixbind = physics_fixture_bind_ext(fix,id, 1, 1)
			if owner.dir == 0
			{
				sprite_index = sp_spear3_r
			}
			else if owner.dir == 180
			{
				sprite_index = sp_spear3_l
			}
		}
	}
}
if combo_1 == 0 && combo_finish_1 <= 0 && combo_2 == 0 && combo_finish_2 <= 0 && combo_3 == 0 && combo_finish_3 <= 0
{
	combo_0 = 1
	visible = 0
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
		if type == "spear"
		{
			combo_finish_3 = 40
		}
	}

	if combo_1 == 1
	{
		combo2_start = true
		combo_2 = 1
	    if type == "spear"
		{
			combo_finish_2 = 30
		}
	}

	if combo_0 == 1
	{
		combo1_start = 1
		combo_0 = 0
	    combo_1 = 1
	    if type == "spear"
		{
			combo_finish_1 = 30
		}
	}
}

#endregion
