event_inherited()
button_name = "wpn_stone_1"
name = "Weapon Stone 1"
type = "Upgrade material"
description1 = "Common stone needed to upgrade a"
description2 = "weapon to level 5."
description3 = ""
description4 = ""
sprite_icon = sp_wpn_stone_1
sprite_contour = sp_contour_wpn_stone_1

inventory_instance = instance_find(o_inventory,0)
number_of_item = inventory_instance.items_owned[inventory_item_type.wpn_stone_1]