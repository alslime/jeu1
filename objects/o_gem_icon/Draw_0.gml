x = camera_get_view_x(view_camera[0]) + 16
y = camera_get_view_y(view_camera[0]) + 108

if instance_exists(o_front_surface)
{
	inst_front_surface = instance_find (o_front_surface,0)
}
if surface_exists(inst_front_surface.front_surf) && inst_hero.equip_menu == false
{
	surface_set_target(inst_front_surface.front_surf)
	draw_self()
	surface_reset_target()
}


