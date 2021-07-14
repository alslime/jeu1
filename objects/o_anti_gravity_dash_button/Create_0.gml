event_inherited()
item_name = "Anti-Gravity Dash"
sprite = sp_antigravity_dash
sprite_contour = sp_contour_anti_gravity_dash
power_activated = inst_hero.gravity_defy_dash_activated
description1 = "Prevents falling when dashing."
description2 = ""
description3 = ""
description4 = ""
inventory_instance = instance_find(o_inventory,0)
number_of_item = inventory_instance.items_owned[inventory_item_type.gravity_defy_dash]