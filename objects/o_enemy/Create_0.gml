if instance_exists(o_weapon)
{
	vweapon = instance_find(o_weapon,0)
}
if instance_exists(o_hero)
{
	inst_hero = instance_find(o_hero,0)
}
phy_fixed_rotation =  true

state_countdown = state_countdown_time