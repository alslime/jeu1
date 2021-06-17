event_inherited()
name = "Powers"
sprite = sp_equip_powers
sprite_contour = sp_contour_equip_powers

total_powers = 0
powers_array = array_create(total_powers)

if inst_hero.gravity_defy_dash_aquired
{
	powers_array[0] = o_anti_gravity_dash_button
	total_powers ++
}
if inst_hero.double_jump_aquired
{
	powers_array[1] = o_double_jump_button
	total_powers ++
}