x1 = camera_get_view_x(view_camera[0])
y1 = camera_get_view_y(view_camera[0])

x = x1 + x_correction
y = y1 + y_correction

if place_meeting(x,y,o_mouse)
{
	image_blend = c_orange
}
else
{
	image_blend = c_white
}

draw_self()