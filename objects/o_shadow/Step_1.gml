surface_set_target(surf)
draw_clear_alpha(c_black,0)
draw_set_alpha(0.98)
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
surface_reset_target()