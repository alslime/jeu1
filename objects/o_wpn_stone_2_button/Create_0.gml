event_inherited()
button_name = "wpn_stone_2"
name = "Weapon Stone 2"
type = "Upgrade material"
description1 = "Rare stone needed to upgrade a"
description2 = "weapon to level 10."
description3 = ""
description4 = ""
sprite_icon = sp_wpn_stone_2
sprite_contour = sp_contour_wpn_stone_2

inventory_instance = instance_find(o_inventory,0)
number_of_item = inventory_instance.items_owned[inventory_item_type.wpn_stone_2]