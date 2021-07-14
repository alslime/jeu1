event_inherited()
button_name = "wpn_stone_3"
name = "Weapon Stone 3"
type = "Upgrade material"
description1 = "Super rare stone needed to upgrade"
description2 = "a weapon to level 15."
description3 = ""
description4 = ""
sprite_icon = sp_wpn_stone_3
sprite_contour = sp_contour_wpn_stone_3

inventory_instance = instance_find(o_inventory,0)
number_of_item = inventory_instance.items_owned[inventory_item_type.wpn_stone_3]