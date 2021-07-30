event_inherited()
name = "Support"
icon = instance_find(o_utility_icon,0)
sprite = sp_equip_support
sprite_contour = sp_contour_heal_icon

total_support = 0
support_array = array_create(total_support)

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