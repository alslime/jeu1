x1 = camera_get_view_x(view_camera[0])
y1 = camera_get_view_y(view_camera[0])

hb_hero = draw_healthbar(x1 + 102, y1 + 32, x1 + 102 + hpmax, y1 + 42, ((hpmax-hplost)/hpmax)*100,c_black,c_red,c_red,0,true,true)
Henergy_heo = draw_healthbar(x1 + 102, y1 + 48, x1 + 102 + energymax, y1 + 58, ((energymax-energylost)/energymax)*100,c_black,c_blue,c_blue,0,true,true)

//Parallax Backgrounds
background_x[0] = x1/1.5
background_x[1] = x1/2
background_x[2] = x1/2.5
background_x[3] = x1/3

draw_self()