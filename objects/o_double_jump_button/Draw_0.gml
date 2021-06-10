event_inherited()
if power_activated
{
	inst_hero.double_jump_activated = true
}
else
{
	inst_hero.double_jump_activated = false
}

if inst_hero.double_jump_activated == true
{
	power_activated = true
	image_blend = c_red
}


draw_self()