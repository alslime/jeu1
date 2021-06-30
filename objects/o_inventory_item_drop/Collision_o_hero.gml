inst_inventory = instance_find(o_inventory,0)
inst_inventory.items_owned[drop_subtype] += drop_number
instance_destroy()
