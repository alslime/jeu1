event_inherited()
if power_activated
{
	inst_hero.gravity_defy_dash_activated = true
}
else
{
	inst_hero.gravity_defy_dash_activated = false
}

if inst_hero.gravity_defy_dash_activated == true
{
	power_activated = true
	image_blend = c_red
}

draw_self()