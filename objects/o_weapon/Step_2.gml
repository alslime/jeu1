if owner.dir == 0
{
	//physics_fixture_delete(fix_l)
	//sprite_index = sprite_r
	
	x = owner.x + combo_x
	y = owner.y + combo_y
	phy_position_x = x
	phy_position_y = y
	phy_rotation = combo_rot
}
else if owner.dir == 180
{
	//sprite_index = sprite_l
	image_xscale = -1
	
	x = owner.x - sprite_width + owner.sprite_width - combo_x
	y = owner.y + combo_y
	phy_position_x = x
	phy_position_y = y	
	phy_rotation = -combo_rot
}