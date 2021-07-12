event_inherited()
inst_hero.wpn_abi_pow_chosen = id
inst_hero.create_buttons = true

name = "Inventory"
sprite = sp_equip_inventory
sprite_contour = sp_contour_equip_inventory

total_items = 0
inventory_array = array_create(total_items)

if inst_inventory.items_owned[inventory_item_type.wpn_stone_1] !=0
{
	inventory_array[total_items] = o_wpn_stone_1_button
	total_items ++
}
if inst_inventory.items_owned[inventory_item_type.wpn_stone_2] !=0
{
	inventory_array[total_items] = o_wpn_stone_2_button
	total_items ++
}
if inst_inventory.items_owned[inventory_item_type.wpn_stone_3] !=0
{
	inventory_array[total_items] = o_wpn_stone_3_button
	total_items ++
}
if inst_inventory.items_owned[inventory_item_type.wpn_stone_4] !=0
{
	inventory_array[total_items] = o_wpn_stone_4_button
	total_items ++
}
if inst_inventory.items_owned[inventory_item_type.wpn_stone_5] !=0
{
	inventory_array[total_items] = o_wpn_stone_5_button
	total_items ++
}