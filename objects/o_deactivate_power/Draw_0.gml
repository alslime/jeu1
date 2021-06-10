x1 = camera_get_view_x(view_camera[0])
y1 = camera_get_view_y(view_camera[0])

x = x1 + x_correction
y = y1 + y_correction

if place_meeting(x,y,o_mouse)
{
	image_blend = c_orange
}
else
{
	image_blend = c_white
}
if owner.power_activated == false
{
	image_blend = colour
}

draw_self()

draw_set_font(fontbig)

script_execute(text_outline,x+sprite_width/2-string_width("Deactivate")/2,y+1,"Deactivate")
draw_text_transformed_color(x+sprite_width/2-string_width("Deactivate")/2,y+2,"Deactivate",1,1,0,c_white,c_white,c_white,c_white,1)

