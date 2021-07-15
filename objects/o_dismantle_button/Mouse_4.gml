inst_inventory = instance_find(o_inventory,0)
if inst_inventory.items_owned[owner.number_of_item_ref] > 0
{
	inst_inventory.items_owned[owner.number_of_item_ref] -= 1
	inst_inventory.items_owned[owner.craft_item_1_owned_ref] += owner.dismantle_item_1_number
	inst_inventory.items_owned[owner.craft_item_2_owned_ref] += owner.dismantle_item_2_number
	inst_inventory.items_owned[owner.craft_item_3_owned_ref] += owner.dismantle_item_3_number
}