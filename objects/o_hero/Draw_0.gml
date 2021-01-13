draw_set_font(TimesNewRoman15)

x1 = camera_get_view_x(view_camera[0])
y1 = camera_get_view_y(view_camera[0])

draw_healthbar(x1 + 102, y1 + 32, x1 + 102 + hpmax, y1 + 42, ((hpmax-hplost)/hpmax)*100,c_black,c_red,c_red,0,true,false)
draw_healthbar(x1 + 102, y1 + 48, x1 + 102 + energymax, y1 + 58, ((energymax-energylost)/energymax)*100,c_black,c_blue,c_blue,0,true,false)

draw_text_transformed_color(x1 + 102, y1 + 60,total_essence,1,1,0,c_black,c_black,c_black,c_black,1)

draw_self()