x = camera_get_view_x(view_camera[0]) + 8
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 18 - sprite_height

weapon_selected = "Fists"

if instance_exists(o_front_surface)
{
	inst_front_surface = instance_find (o_front_surface,0)
}
if surface_exists(inst_front_surface.front_surf)
{
	surface_set_target(inst_front_surface.front_surf)
	draw_self()
	draw_set_font(fontsmall)
	script_execute(text_outline,x + sprite_width/2 - (string_width(string(weapon_selected))/2),y+sprite_height,string(weapon_selected))
	draw_text_transformed_color(x + sprite_width/2 - (string_width(string(weapon_selected))/2),y+1+sprite_height,string(weapon_selected),1,1,0,c_white,c_white,c_white,c_white,1)
	surface_reset_target()
}


