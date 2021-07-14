event_inherited()
instance = instance_find(o_support,0)
button_name = "instant_heal"
name = "Instant Heal"
level = instance.instant_heal_lvl
support_value = instance.instant_regen_value
description1 = "Uses a lot of energy to regenarate"
description2 = "a certain amount of Hp."
sprite_icon = sp__hero_instant_heal_demonstration
sprite_contour = sp_contour_heal_icon

inventory_instance = instance_find(o_inventory,0)
number_of_item = inventory_instance.items_owned[inventory_item_type.instant_heal]