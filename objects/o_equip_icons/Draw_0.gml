x1 = camera_get_view_x(view_camera[0])
y1 = camera_get_view_y(view_camera[0])

x = x1 + x_correct
y = y1 + y_correct

if inst_hero.wpn_abi_pow_chosen == id
{
	image_blend = colour
	wpn_abi_pow_col = colour
	script_execute(text_outline,x1 + 164, y1 + 10,name)
	draw_text_transformed_color(x1 + 164, y1 + 11,name,1,1,0,c_white,c_white,c_white,c_white,1)
}
else
{
	image_blend = c_white
	wpn_abi_pow_col = c_white
}

draw_self()