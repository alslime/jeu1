x = camera_get_view_x(view_camera[0]) + 64 + 64 + sprite_width
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 40 - sprite_height

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
	script_execute(text_outline,x + sprite_width/2 - (string_width(string(utility_selected))/2)+4,y+4+sprite_height-9,string(utility_selected))
	draw_text_transformed_color(x + sprite_width/2 - (string_width(string(utility_selected))/2)+4,y+4+sprite_height-8,string(utility_selected),1,1,0,c_white,c_white,c_white,c_white,1)
	surface_reset_target()
}


