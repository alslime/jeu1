event_inherited()
if inst_hero.wpn_abi_pow_chosen == id
{
	total_items = total_powers
	items_array = powers_array
}
else
{
	instance_destroy(o_activate_power)
	instance_destroy(o_deactivate_power)
}