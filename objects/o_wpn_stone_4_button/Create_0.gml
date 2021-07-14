event_inherited()
button_name = "wpn_stone_4"
name = "Weapon Stone 4"
type = "Upgrade material"
description1 = "Unique stone needed to upgrade a"
description2 = "weapon to level 20."
description3 = ""
description4 = ""
sprite_icon = sp_wpn_stone_4
sprite_contour = sp_contour_wpn_stone_4

inventory_instance = instance_find(o_inventory,0)
number_of_item = inventory_instance.items_owned[inventory_item_type.wpn_stone_4]