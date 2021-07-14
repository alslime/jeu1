event_inherited()
item_name = "Double Jump"
sprite = sp_double_jump_icon
sprite_contour = sp_contour_double_jump
power_activated = inst_hero.double_jump_activated
description1 = "The most iconic power in the"
description2 = "history of Platformers. Allows"
description3 = "to jump twice."
description4 = ""

inventory_instance = instance_find(o_inventory,0)
number_of_item = inventory_instance.items_owned[inventory_item_type.double_jump]