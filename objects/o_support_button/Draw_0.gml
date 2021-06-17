event_inherited()

contour_colour = c_white
if inst_hero.equip_button_chosen == id
{
	contour_colour = colour
}
if inst_hero.chosen_support == button_name
{
	contour_colour = c_red
}
if place_meeting(x,y,o_mouse)
{
	contour_colour = c_orange
}

draw_self()
draw_sprite_ext(sprite_contour,0,x,y,1,1,0,contour_colour,1)

