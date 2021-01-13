if owner.dir == 0
{
	if owner.dir != last_dir
	{
		sprite_index = sprite_r
		physics_remove_fixture(id,fix_bind)
		fix_bind = physics_fixture_bind(fix_r,id)
		last_dir = 0
	}
	x = owner.x + combo_x
	y = owner.y + combo_y
	phy_position_x = x
	phy_position_y = y
	phy_rotation = combo_rot
}
else if owner.dir == 180
{
	if owner.dir != last_dir
	{
		sprite_index = sprite_l
		physics_remove_fixture(id,fix_bind)
		fix_bind = physics_fixture_bind(fix_l,id)
		last_dir = 180
	}
	x = owner.x - combo_x
	y = owner.y + combo_y
	phy_position_x = x
	phy_position_y = y	
	phy_rotation = -combo_rot
}