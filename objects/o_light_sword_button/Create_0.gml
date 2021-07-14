event_inherited()
button_name = "light_sword"
instance = instance_find(o_light_sword,0)
sprite_icon = sp_light_sword
sprite_contour = sp_contour_light_sword_icon

inventory_instance = instance_find(o_inventory,0)
number_of_item = inventory_instance.items_owned[inventory_item_type.light_sword]