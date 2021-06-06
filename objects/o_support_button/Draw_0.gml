event_inherited()

image_blend = c_white
if place_meeting(x,y,o_mouse)
{
	image_blend = c_orange
}
if inst_hero.equip_button_chosen == id
{
	image_blend = colour
}
if inst_hero.chosen_support == button_name
{
	image_blend = c_red
}

draw_self()

