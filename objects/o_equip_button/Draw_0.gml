x1 = camera_get_view_x(view_camera[0])
y1 = camera_get_view_y(view_camera[0])

x = x1 + x_correction
y = y1 + y_correction

if inst_hero.equip_button_chosen == id
{
	image_blend = colour
}
else if place_empty(x,y,o_mouse)
{
	image_blend = c_white
}
else
{
	image_blend = c_orange
}


draw_self()