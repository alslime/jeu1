x = camera_get_view_x(view_camera[0]) + 38
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 18 - sprite_height

utility_selected = "Heal"

if instance_exists(o_front_surface)
{
	inst_front_surface = instance_find (o_front_surface,0)
}
if surface_exists(inst_front_surface.front_surf) && inst_hero.equip_menu == false
{
	surface_set_target(inst_front_surface.front_surf)
	draw_self()
	draw_set_font(fontsmall)
	script_execute(text_outline,x + sprite_width/2 - (string_width(string(utility_selected))/2),y+sprite_height,string(utility_selected))
	draw_text_transformed_color(x + sprite_width/2 - (string_width(string(utility_selected))/2),y+1+sprite_height,string(utility_selected),1,1,0,c_white,c_white,c_white,c_white,1)
	surface_reset_target()
}


