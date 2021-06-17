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
	contour_colour = c_red
}
if place_meeting(x,y,o_mouse)
{
	contour_colour = c_orange
}

draw_self()
draw_sprite_ext(sprite_contour,0,x,y,1,1,0,contour_colour,1)