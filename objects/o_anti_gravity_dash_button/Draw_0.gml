event_inherited()
if power_activated == 1
{
	inst_hero.gravity_defy_dash_activated = 1
}
else
{
	inst_hero.gravity_defy_dash_activated = 0
}

if inst_hero.gravity_defy_dash_activated == 1
{
	power_activated = 1
	contour_colour = c_red
}
if place_meeting(x,y,o_mouse)
{
	contour_colour = c_orange
}

draw_self()
draw_sprite_ext(sprite_contour,0,x,y,1,1,0,contour_colour,1)
