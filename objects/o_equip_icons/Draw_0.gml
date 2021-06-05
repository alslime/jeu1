x1 = camera_get_view_x(view_camera[0])
y1 = camera_get_view_y(view_camera[0])

x = x1 + x_correct
y = y1 + y_correct

if inst_hero.wpn_abi_pow_chosen == id
{
	image_blend = colour
	wpn_abi_pow_col = c_white
	script_execute(text_outline,x1 + camera_get_view_width(view_camera[0])/2+8, y1+24-9,name)
	draw_text_transformed_color(x1 + camera_get_view_width(view_camera[0])/2+8, y1+24-8,name,1,1,0,c_white,c_white,c_white,c_white,1)
}
else if place_empty(x,y,o_mouse)
{
	image_blend = c_white
	wpn_abi_pow_col = c_white
}
else
{
	image_blend = c_orange
	wpn_abi_pow_col = c_white
}

draw_self()

script_execute(text_outline,x1 + camera_get_view_width(view_camera[0])/2 - 20 - string_width(string(name)), y + 21,name)
draw_text_transformed_color(x1 + camera_get_view_width(view_camera[0])/2 - 20 - string_width(string(name)), y + 22,name,1,1,0,wpn_abi_pow_col,wpn_abi_pow_col,wpn_abi_pow_col,wpn_abi_pow_col,1)

draw_sprite(sprite,0,x+4,y+4)

