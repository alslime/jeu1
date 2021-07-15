inst_inventory = instance_find(o_inventory,0)
if ((owner.craft_item_1_owned >= owner.craft_item_1_number) && 
	(owner.craft_item_2_owned >= owner.craft_item_2_number) && 
	(owner.craft_item_3_owned >= owner.craft_item_3_number))
{
	inst_inventory.items_owned[owner.craft_item_1_owned_ref] -= owner.craft_item_1_number
	inst_inventory.items_owned[owner.craft_item_2_owned_ref] -= owner.craft_item_2_number
	inst_inventory.items_owned[owner.craft_item_3_owned_ref] -= owner.craft_item_3_number
	inst_inventory.items_owned[owner.number_of_item_ref] += 1
}