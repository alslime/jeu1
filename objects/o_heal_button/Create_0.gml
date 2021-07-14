event_inherited()
instance = instance_find(o_support,0)
button_name = "heal"
name = "Heal"
level = instance.heal_lvl
support_value = instance.regen_value
description1 = "Uses energy to regenarate small"
description2 = "amounts of Hp over time."
sprite_icon = sp_heal
sprite_contour = sp_contour_heal_icon

inventory_instance = instance_find(o_inventory,0)
number_of_item = inventory_instance.items_owned[inventory_item_type.heal]