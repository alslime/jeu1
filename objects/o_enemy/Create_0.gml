if instance_exists(o_hero)
{
	inst_hero = instance_find(o_hero,0)
}
phy_fixed_rotation =  true

countdown = 0

dir = 0

state_countdown = state_countdown_time

stop_at_corner_l = false
stop_at_corner_r = false

prevhp_lost = hplost

hero_state = "stand"
stand = layer_sequence_create("lay_front",x,y,se_spider_stand)
last_sequence = stand
last_sequence_type = se_spider_stand