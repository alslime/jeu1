x = camera_get_view_x(view_camera[0]) + 16
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 16 - sprite_height

utility_selected = "Healing ability"

if instance_exists(o_front_surface)
{
	inst_front_surface = instance_find (o_front_surface,0)
}
if surface_exists(inst_front_surface.front_surf) && inst_hero.equip_menu == false
{
	surface_set_target(inst_front_surface.front_surf)
	draw_self()
	draw_set_font(fontsmall)
	script_execute(text_outline,x+8+sprite_width+4, y+4+sprite_height/2-string_height(string(utility_selected))/2-9,string(utility_selected))
	draw_text_transformed_color(x+8+sprite_width+4, y+4+sprite_height/2-string_height(string(utility_selected))/2-8,string(utility_selected),1,1,0,c_white,c_white,c_white,c_white,1)
	surface_reset_target()
}


