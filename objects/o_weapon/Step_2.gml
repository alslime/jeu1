if owner.dir == 0
{
	x = owner.x + combo_x
	y = owner.y + combo_y
	phy_position_x = x
	phy_position_y = y
	phy_rotation = combo_rot
}
else if owner.dir == 180
{
	x = owner.x - sprite_width + owner.sprite_width
	y = owner.y
	phy_position_x = x
	phy_position_y = y	
	phy_rotation = combo_rot
}