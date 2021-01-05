if owner.dir == 0
{
	x = owner.x
	y = owner.y
	phy_position_x = x
	phy_position_y = y
}
if owner.dir == 180
{
	x = owner.x - sprite_width + owner.sprite_width
	y = owner.y
	phy_position_x = x
	phy_position_y = y	
}
