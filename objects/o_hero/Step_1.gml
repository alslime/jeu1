jump_key = keyboard_check_pressed (vk_space) || gamepad_button_check_pressed(0,gp_face1)
left_key_pressed = keyboard_check_pressed(ord("A")) || gamepad_axis_value(0,gp_axislh) < -0.5
right_key_pressed = keyboard_check_pressed( ord("D")) || gamepad_axis_value(0,gp_axislh) > 0.5
left_key = keyboard_check(ord("A")) || gamepad_axis_value(0,gp_axislh) < -0.5
right_key = keyboard_check( ord("D")) || gamepad_axis_value(0,gp_axislh) > 0.5
dash_key = keyboard_check_pressed(vk_shift) || gamepad_button_check_pressed(0,gp_face2)
support_key = mouse_check_button(mb_right) || gamepad_button_check(0,gp_face4)

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
if jump_key && (!jump)
{
	phy_speed_y = -jump_value
	inst_dust1 = instance_create_layer(x,y + sprite_height,"lay_hero",o_walking_dust)
	inst_dust1.image_xscale = 1
	inst_dust2 = instance_create_layer(x + sprite_width,y + sprite_height,"lay_hero",o_walking_dust)
	inst_dust2.image_xscale = -1
}

#endregion

// Movments left/right && Dash && check current combo
#region

if left_key_pressed == true
{
	dir = 180
}
if right_key_pressed == true
{
	dir = 0
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
	if (!jump) && (!regen) && (dash_time == 0)
	{
		hero_state = "stand"
	}
	else if jump && (!regen) && (dash_time == 0)
	{
		hero_state = "jump"
	}
}

// Dash
if dash_time > 0
{
	hero_state = "dash"
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
	//dash_begin = true
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

// Regen
#region

if support_key && (hplost > 0) && (!jump) && (energylost <= energymax - energyconsomption)
{
	hero_state = "heal"
	regen = true
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
else if hero_state == "walk"
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
		instance_create_layer(x + sprite_width/2,y + sprite_height - 1,"lay_hero",o_walking_dust2)
		walk_dust_count = 0
	}
}
else if hero_state == "jump"
{
	if last_sequence_type != se_jump
	{
		sejump = layer_sequence_create("lay_hero",x,y,se_jump)
		layer_sequence_destroy(last_sequence)
		last_sequence = sejump
		last_sequence_type = se_jump
	}
}
else if hero_state == "dash"
{
	if last_sequence_type != se_dash
	{
		layer_sequence_destroy(last_sequence)
		sedash = layer_sequence_create("lay_hero",x,y,se_dash)
		last_sequence = sedash
		last_sequence_type = se_dash
	}
}
else if hero_state == "combo1"
{
	if last_sequence_type != se_punch1
	{
		layer_sequence_destroy(last_sequence)
		punch1 = layer_sequence_create("lay_hero",x,y,se_punch1)
		last_sequence = punch1
		last_sequence_type = se_punch1
	}
}
else if hero_state == "combo2"
{
	if last_sequence_type != se_punch2
	{
		layer_sequence_destroy(last_sequence)
		punch2 = layer_sequence_create("lay_hero",x,y,se_punch2)
		last_sequence = punch2
		last_sequence_type = se_punch2
	}
}
else if hero_state == "combo3"
{
	if last_sequence_type != se_punch3
	{
		layer_sequence_destroy(last_sequence)
		punch3 = layer_sequence_create("lay_hero",x,y,se_punch3)
		last_sequence = punch3
		last_sequence_type = se_punch3
	}
}
else if hero_state == "heal"
{
	if last_sequence_type != se_heal
	{
		layer_sequence_destroy(last_sequence)
		heal = layer_sequence_create("lay_hero",x,y,se_heal)
		last_sequence = heal
		last_sequence_type = se_heal
		
		heal_interval = 2
	}
	if heal_interval > 0
	{
		heal_interval -= 1
	}
	if heal_interval == 0
	{
		hplost -= 1
		energylost += energyconsomption
		heal_interval = 2
	}
	phy_speed_x = 0
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

