if instance_exists(o_hero)
{
	inst_hero = instance_find(o_hero,0)
}
x_cam = camera_get_view_x(view_camera[0])
y_cam = camera_get_view_y(view_camera[0])

x_correction = x-x_cam
y_correction = y-y_cam