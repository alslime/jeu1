event_inherited()
drops_array = array_create(0)

total_possible_drop = 7
//drop_type; drop_subtype; number_of_drop
drops_array[0,0] = o_inventory_drop
drops_array[0,1] = inventory_item_type.wpn_stone_1
drops_array[0,2] = 1

drops_array[1,0] = o_weapon_drop
drops_array[1,1] = inventory_item_type.light_sword
drops_array[1,2] = 1

drops_array[2,0] = o_weapon_drop
drops_array[2,1] = inventory_item_type.great_sword
drops_array[2,2] = 1

drops_array[3,0] = o_support_drop
drops_array[3,1] = inventory_item_type.instant_heal
drops_array[3,2] = 1

drops_array[4,0] = o_power_drop
drops_array[4,1] = inventory_item_type.gravity_defy_dash
drops_array[4,2] = 1

drops_array[5,0] = o_power_drop
drops_array[5,1] = inventory_item_type.double_jump
drops_array[5,2] = 1

drops_array[6,0] = o_support_drop
drops_array[6,1] = inventory_item_type.heal
drops_array[6,2] = 1
