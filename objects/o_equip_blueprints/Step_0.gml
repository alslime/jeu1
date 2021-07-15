event_inherited()
if inst_hero.wpn_abi_pow_chosen == id
{
	total_items = total_blueprints
	items_array = blueprints_array
}
else
{
	instance_destroy(o_craft_button)
	instance_destroy(o_dismantle_button)
}