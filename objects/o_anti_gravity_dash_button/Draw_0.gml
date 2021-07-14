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
//Number of items
draw_set_font(fontsmall)
script_execute(text_outline,x+sprite_width-string_width(number_of_item)-1,y+sprite_height-string_height(number_of_item)+4,number_of_item)
draw_text_transformed_color(x+sprite_width-string_width(number_of_item)-1,y+sprite_height-string_height(number_of_item)+5,number_of_item,1,1,0,c_white,c_white,c_white,c_white,1)