x1 = camera_get_view_x(view_camera[0])
y1 = camera_get_view_y(view_camera[0])

x = x1 + x_correct
y = y1 + y_correct

image_blend = c_white
contour_colour = c_white
wpn_abi_pow_col = c_white
draw_set_font(fontbig)
if inst_hero.wpn_abi_pow_chosen == id
{
	image_blend = colour
	contour_colour = colour
	wpn_abi_pow_col = c_white
	script_execute(text_outline,x1 + camera_get_view_width(view_camera[0])/2+8, y1+24-9,name)
	draw_text_transformed_color(x1 + camera_get_view_width(view_camera[0])/2+8, y1+24-8,name,1,1,0,c_white,c_white,c_white,c_white,1)
}
if place_meeting(x,y,o_mouse)
{
	image_blend = c_orange
	contour_colour = c_orange
	wpn_abi_pow_col = c_white
}

draw_self()

script_execute(text_outline,x1 + camera_get_view_width(view_camera[0])/2 - 20 - string_width(string(name)), y + 19,name)
draw_text_transformed_color(x1 + camera_get_view_width(view_camera[0])/2 - 20 - string_width(string(name)), y + 20,name,1,1,0,wpn_abi_pow_col,wpn_abi_pow_col,wpn_abi_pow_col,wpn_abi_pow_col,1)

draw_sprite(sprite,0,x,y)
draw_sprite_ext(sprite_contour,0,x,y,1,1,0,contour_colour,1)


