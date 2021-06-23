x = camera_get_view_x(view_camera[0]) + 16
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) -(2*(16+sprite_height))

if inst_hero.equip_menu == false
{
	draw_self()
	draw_set_font(fontbig)
	script_execute(text_outline,x+sprite_width+8+4, y+4+sprite_height/2-string_height(string(weapon_selected))/2-6,string(weapon_selected))
	draw_text_transformed_color(x+sprite_width+8+4, y+4+sprite_height/2-string_height(string(weapon_selected))/2-5,string(weapon_selected),1,1,0,c_white,c_white,c_white,c_white,1)
}
