if owner.a < inst_hero.wpn_abi_pow_chosen.total_items - 12 
{
	owner.a += 4
}
inst_hero.create_buttons = true
instance_destroy(o_activate_power)
instance_destroy(o_deactivate_power)
instance_destroy(o_craft_button)
instance_destroy(o_dismantle_button)