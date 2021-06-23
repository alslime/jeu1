jump_key = keyboard_check_pressed (vk_space) || gamepad_button_check_pressed(0,gp_face1)
left_key_pressed = keyboard_check_pressed(ord("A")) || gamepad_axis_value(0,gp_axislh) < -0.5
right_key_pressed = keyboard_check_pressed(ord("D")) || gamepad_axis_value(0,gp_axislh) > 0.5
down_key_pressed = keyboard_check(ord("S")) || gamepad_axis_value(0,gp_axislv) > 0.5
left_key = keyboard_check(ord("A")) || gamepad_axis_value(0,gp_axislh) < -0.5
right_key = keyboard_check( ord("D")) || gamepad_axis_value(0,gp_axislh) > 0.5
dash_key = keyboard_check_pressed(vk_shift) || gamepad_button_check_pressed(0,gp_face2)
if os_type == os_ios || os_type == os_android
{
	support_key = keyboard_check(ord("Y"))
}
else
{
	support_key = mouse_check_button(mb_right) || gamepad_button_check(0,gp_face4) || keyboard_check(ord("L"))
}

can_attack = true
can_abilities = true
can_jump = true
if toggle_crouch || hero_state == "dash"
{
	can_attack = false
	can_abilities = false
	can_jump = false
}
if equip_menu
{
	can_attack = false
	can_abilities = false
}

//Equip menu on/off
#region

equip_menu_key = keyboard_check_pressed(vk_tab) || gamepad_button_check_pressed(0,gp_select)
if equip_menu_key
{
	if equip_menu == false
	{
		equip_menu = true
	}
	else
	{
		equip_menu = false
	}
}

#endregion

// Jump
#region

x1 = x
x2 = x1 + sprite_width
y1 = y + sprite_height + 1
if collision_line (x1,y1,x2,y1,o_ground,false,true)
{
 	jump = false
	can_double_jump = true
}
else
{
	jump = true
}
if (jump_key && (!jump)) || (double_jump)
{
	if can_jump
	{
		phy_speed_y = -jump_value
		inst_dust1 = instance_create_layer(x,y + sprite_height,"lay_hero",o_walking_dust)
		inst_dust1.image_xscale = 1
		inst_dust2 = instance_create_layer(x + sprite_width,y + sprite_height,"lay_hero",o_walking_dust)
		inst_dust2.image_xscale = -1
		double_jump = false
	}
}
if jump_key && can_double_jump && jump
{
	if double_jump_activated
	{
		double_jump = true
	}
	can_double_jump = false
	
}

#endregion

// Movments left/right && Dash && check current combo
#region

if (hero_state != "dash") || (hero_state != "crouch_dash") || (hero_state != "support")
{
	if left_key_pressed == true
	{
		dir = 180
	}
	if right_key_pressed == true
	{
		dir = 0
	}
}

if left_key == true && right_key == true && (dash_time == 0)
{
	if dir == 180
	{
		phy_speed_x = -walk_speed
	    if (!jump)
	    {
			hero_state = "walk"
	    }
	    else if jump
	    {
			hero_state = "jump"
	    }
	}
	else if dir == 0
	{
	    phy_speed_x = walk_speed
	    if (!jump)
	    {
			hero_state = "walk"
	    }
	    else if jump
	    {
			hero_state = "jump"
		}
	}
}
else if left_key && (dash_time == 0)
{
	phy_speed_x = -walk_speed
	dir = 180
	if (!jump)
	{
		hero_state = "walk"
	}
	else if jump
	{
		hero_state = "jump"
	}
}
else if right_key && (dash_time == 0)
{
	phy_speed_x = walk_speed
	dir = 0
	if (!jump)
	{
		hero_state = "walk"
	}
	else if jump
	{
		hero_state = "jump"
	}
}
else
{
	phy_speed_x = 0
	if (!jump) && (!support) && (dash_time == 0)
	{
		hero_state = "stand"
	}
	else if jump && (!support) && (dash_time == 0)
	{
		hero_state = "jump"
	}
}

// Dash
if dash_time > 0
{
	vweapon.combo_0 = 1
	hero_state = "dash"
	if crouch_dash
	{
		hero_state = "crouch_dash"
	}
	dash_time = dash_time - 1
	if dash_dir == 0
	{
		phy_speed_x = dash_speed
	}
	else if dash_dir == 180
	{
		phy_speed_x = -dash_speed
	}
}
if dash_wait > 0
{
	dash_wait = dash_wait - 1
}
if dash_key && dash_wait == 0
{
	crouch_dash = false
	if !jump
	{
		if down_key_pressed || toggle_crouch
		{
			crouch_dash = true
		}
	}
	dash_time = 15
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

//Check combo
if vweapon.current_combo_idx == 1
{
	hero_state = "combo1"
}
else if vweapon.current_combo_idx == 2
{
	hero_state = "combo2"
}
else if vweapon.current_combo_idx == 3
{
	hero_state = "combo3"
}

#endregion

// Crouch
#region

if before_was_crouch_dashing == true
{
	if place_meeting(x,y-24,o_ground)
	{
		toggle_crouch = true
	}
	else
	{
		toggle_crouch = false
	}
}

crouch = false
if (!jump && down_key_pressed && phy_speed_x == 0) || (hero_state == "stand" && toggle_crouch == true)
{
	hero_state = "crouch"
	crouch = true
}

if hero_state = "walk" && toggle_crouch == true
{
	hero_state = "crouch_walk"
	if dir == 180
	{
		phy_speed_x = -walk_init_speed div 3
	}
	else
	{
		phy_speed_x = walk_init_speed div 3
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

// Level up
#region

if keyboard_check_pressed (ord("W"))
{
	xp += 1000
	vweapon.familiarity_points += 10000
}
if xp >= xpmax
{
	xp = xp - xpmax
	xpmax += 5*((level div 5) + 1)
	hpmax += 5*((level div 10) + 1)
	hplost = 0
	level += 1
	energymax += 1
}

#endregion

// Support
#region

inst_support = instance_find(o_support,0)
if support_key && (can_abilities == true)
{
	if (chosen_support == "heal")
	{
		energyconsomption = inst_support.energyconsomption_heal
	}
	if (hplost > 0) && (!jump) && (energylost <= (energymax - energyconsomption))
	{
		hero_state = "support"
		support = true
	}
	else
	{
		support = false
	}	
}
else
{
	support = false
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
		phy_speed_y = -lengthdir_y(1,dir_to_enemy)
	}
    if dir_to_enemy > 90 && dir_to_enemy < 270
    {
		phy_speed_x = 1
		dir = 180
    }
    if dir_to_enemy <= 90 || dir_to_enemy >= 270
    {
		phy_speed_x = -1
		dir = 0
    }
}

#endregion

//States
#region

if hero_state == "stand"
{
	if last_sequence_type != se_stand
	{
		stand = layer_sequence_create("lay_hero",x,y,se_stand)
		layer_sequence_destroy(last_sequence)
		last_sequence = stand
		last_sequence_type = se_stand
	}
}

if hero_state == "crouch"
{
	if last_sequence_type != se_crouch
	{
		secrouch = layer_sequence_create("lay_hero",x,y,se_crouch)
		layer_sequence_destroy(last_sequence)
		last_sequence = secrouch
		last_sequence_type = se_crouch
		
		if current_fix != "crouch_fix"
		{
			change_fixture_for_crouching = true
		}
	}
	vweapon.combo_0 = 1
}

if hero_state == "crouch_dash"
{
	if last_sequence_type != se_crouch_dash
	{
		secrouch_dash = layer_sequence_create("lay_hero",x,y,se_crouch_dash)
		layer_sequence_destroy(last_sequence)
		last_sequence = secrouch_dash
		last_sequence_type = se_crouch_dash
		
		before_was_crouch_dashing = true
		
		if current_fix != "crouch_fix"
		{
			change_fixture_for_crouching = true
		}
		
		vweapon.combo_0 = 1
	}
}

if hero_state == "walk"
{
	if last_sequence_type != se_walk
	{
		walk_dust_count = 0
		walk = layer_sequence_create("lay_hero",x,y,se_walk)
		layer_sequence_destroy(last_sequence)
		last_sequence = walk
		last_sequence_type = se_walk
	}
	
	walk_dust_count += 1
	if walk_dust_count > 12
	{
		instance_create_layer(x + sprite_width/2,y + sprite_height - 4,"lay_hero",o_walking_dust2)
		walk_dust_count = 0
	}
}

if hero_state == "crouch_walk"
{
	if last_sequence_type != se_crouch_walk
	{
		crouch_walk = layer_sequence_create("lay_hero",x,y,se_crouch_walk)
		layer_sequence_destroy(last_sequence)
		last_sequence = crouch_walk
		last_sequence_type = se_crouch_walk
		
		vweapon.combo_0 = 1
		
		if current_fix != "crouch_fix"
		{
			change_fixture_for_crouching = true
		}
	}
}

if hero_state == "jump"
{
	if last_sequence_type != se_jump
	{
		sejump = layer_sequence_create("lay_hero",x,y,se_jump)
		layer_sequence_destroy(last_sequence)
		last_sequence = sejump
		last_sequence_type = se_jump
		
		vweapon.combo_0 = 1
	}
}

if hero_state == "dash"
{
	if last_sequence_type != se_dash
	{
		layer_sequence_destroy(last_sequence)
		sedash = layer_sequence_create("lay_hero",x,y,se_dash)
		last_sequence = sedash
		last_sequence_type = se_dash
		
		vweapon.combo_0 = 1
	}
	if gravity_defy_dash_activated == true
	{
		phy_speed_y = 0
	}
}

if hero_state == "combo1"
{
	if last_sequence_type != se_1
	{
		layer_sequence_destroy(last_sequence)
		punch1 = layer_sequence_create("lay_hero",x,y,se_1)
		last_sequence = punch1
		last_sequence_type = se_1
	}
}

if hero_state == "combo2"
{
	if last_sequence_type != se_2
	{
		layer_sequence_destroy(last_sequence)
		punch2 = layer_sequence_create("lay_hero",x,y,se_2)
		last_sequence = punch2
		last_sequence_type = se_2
	}
}

if hero_state == "combo3"
{
	if last_sequence_type != se_3
	{
		layer_sequence_destroy(last_sequence)
		punch3 = layer_sequence_create("lay_hero",x,y,se_3)
		last_sequence = punch3
		last_sequence_type = se_3
	}
}

if hero_state == "support"
{
	//Heal
	if chosen_support == "heal"
	{
		if last_sequence_type != se_heal
		{
			layer_sequence_destroy(last_sequence)
			heal = layer_sequence_create("lay_hero",x,y,se_heal)
			last_sequence = heal
			last_sequence_type = se_heal
		
			vweapon.combo_0 = 1
		
			heal_interval = inst_support.heal_interval
		}
		if heal_interval > 0
		{
			heal_interval -= 1
		}
		if heal_interval == 0
		{
			hplost -= inst_support.regen_value
			energylost += inst_support.energyconsomption_heal
			heal_interval = inst_support.heal_interval
			in_regen_text = instance_create_layer(x,y,"lay_front",o_heal_text)
			in_regen_text.regen_value = inst_support.regen_value
			in_regen_text.x = x + sprite_width - 8
			in_regen_text.y = y - 16
		}
	}
	
	phy_speed_x = 0
}

#endregion

// Fixtures
#region

if change_fixture_for_crouching == true
{
	physics_remove_fixture(id,fix_binded)
	physics_fixture_delete(fix)

	crouch_fix = physics_fixture_create()
	physics_fixture_set_polygon_shape(crouch_fix)
	physics_fixture_add_point(crouch_fix, 0,24)
	physics_fixture_add_point(crouch_fix, 36,24)
	physics_fixture_add_point(crouch_fix, 36, 84)
	physics_fixture_add_point(crouch_fix, 0, 84)
	physics_fixture_set_density(crouch_fix,1)
	physics_fixture_set_restitution(crouch_fix,0)
	physics_fixture_set_collision_group(crouch_fix,0)
	physics_fixture_set_linear_damping(crouch_fix,0)
	physics_fixture_set_angular_damping(crouch_fix,0)
	physics_fixture_set_friction(crouch_fix,0)
	crouch_fix_binded = physics_fixture_bind(crouch_fix,id)
	
	current_fix = "crouch_fix"
	change_fixture_for_crouching = false
}

if (hero_state != "crouch") && (hero_state != "crouch_dash") && (hero_state != "crouch_walk") && (current_fix == "crouch_fix")
{
	change_fixture_for_standing = true
}

if change_fixture_for_standing == true
{
	physics_remove_fixture(id,crouch_fix_binded)
	physics_fixture_delete(fix)

	fix = physics_fixture_create()
	physics_fixture_set_polygon_shape(fix)
	physics_fixture_add_point(fix, 0,0)
	physics_fixture_add_point(fix, 36, 0)
	physics_fixture_add_point(fix, 36, 84)
	physics_fixture_add_point(fix, 0, 84)
	physics_fixture_set_density(fix,0.5)
	physics_fixture_set_restitution(fix,0)
	physics_fixture_set_collision_group(fix,0)
	physics_fixture_set_linear_damping(fix,0)
	physics_fixture_set_angular_damping(fix,0)
	physics_fixture_set_friction(fix,0)
	fix_binded = physics_fixture_bind(fix,id)
	
	current_fix = "fix"
	change_fixture_for_standing = false
}

#endregion

//Sequence follows player
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

