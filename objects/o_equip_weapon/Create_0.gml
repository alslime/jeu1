event_inherited()
name = "Weapons"
sprite = sp_equip_weapons
sprite_contour = sp_contour_equip_weapons

total_weapons = 0
weapons_array = array_create(total_weapons)

//Fist
weapons_array[total_weapons] = o_fist_button
total_weapons ++

if inst_inventory.items_owned[inventory_item_type.light_sword] != 0
{
	weapons_array[total_weapons] = o_light_sword_button
	total_weapons ++
}
if inst_inventory.items_owned[inventory_item_type.great_sword] != 0
{
	weapons_array[total_weapons] = o_great_sword_button
	total_weapons ++
}