total_support = 0
if inst_inventory.items_owned[inventory_item_type.heal] !=0
{
	support_array[total_support] = o_heal_button
	total_support ++
}
if inst_inventory.items_owned[inventory_item_type.instant_heal] !=0
{
	support_array[total_support] = o_instant_heal_button
	total_support ++
}