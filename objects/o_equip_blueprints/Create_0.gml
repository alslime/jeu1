event_inherited()

name = "Blueprints"
sprite = sp_blueprints_icon
sprite_contour = sp_contour_blueprints_icon

total_blueprints = 0
blueprints_array = array_create(total_blueprints)

if inst_inventory.items_owned[inventory_item_type.bp_light_sword] !=0
{
	blueprints_array[total_blueprints] = o_bp_light_sword
	total_blueprints ++
}