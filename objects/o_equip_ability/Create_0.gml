event_inherited()
name = "Powers"
sprite = sp_equip_powers
sprite_contour = sp_contour_equip_powers

total_powers = 0
powers_array = array_create(total_powers)

//if inst_hero.gravity_defy_dash_aquired
if inst_inventory.items_owned[inventory_item_type.gravity_defy_dash] != 0
{
	powers_array[total_powers] = o_anti_gravity_dash_button
	total_powers ++
}
if inst_inventory.items_owned[inventory_item_type.double_jump] != 0
{
	powers_array[total_powers] = o_double_jump_button
	total_powers ++
}