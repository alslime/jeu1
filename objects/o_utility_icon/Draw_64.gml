x = 16
y = camera_get_view_height(view_camera[0]) - 16 - sprite_height

utility_selected = "Heal"


draw_self()
draw_set_font(fontbig)
script_execute(text_outline,x+8+sprite_width+4, y+4+sprite_height/2-string_height(string(utility_selected))/2-6,string(utility_selected))
draw_text_transformed_color(x+8+sprite_width+4, y+4+sprite_height/2-string_height(string(utility_selected))/2-5,string(utility_selected),1,1,0,c_white,c_white,c_white,c_white,1)



