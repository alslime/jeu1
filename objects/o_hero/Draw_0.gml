draw_set_font(font15)

x1 = camera_get_view_x(view_camera[0])
y1 = camera_get_view_y(view_camera[0])

draw_text_transformed_color(x1 + 48, y1 + 66,total_gears,1,1,0,c_black,c_black,c_black,c_black,1)
gear_icon.strg_width = string_width(total_gears)

draw_set_font(font8)
draw_healthbar(x1 + 32, y1 + 32, x1 + 32 + hpmax, y1 + 46, ((hpmax-hplost)/hpmax)*100,c_black,c_red,c_red,0,true,false)
draw_healthbar(x1 + 32, y1 + 50, x1 + 32 + energymax, y1 + 64, ((energymax-energylost)/energymax)*100,c_black,c_blue,c_blue,0,true,false)
draw_text_transformed_color(x1 +32 +hpmax/2 -string_width(string(hpmax-hplost) + "/" + string(hpmax))/2, y1 + 33,string(hpmax-hplost) + "/" + string(hpmax),1,1,0,c_white,c_white,c_white,c_white,1)
draw_text_transformed_color(x1 +32 +energymax/2 -string_width(string(energymax-energylost) + "/" + string(energymax))/2, y1 + 51,string(energymax-energylost) + "/" + string(energymax),1,1,0,c_white,c_white,c_white,c_white,1)

draw_self()

if surface_exists(o_shadow.surf)
{
	surface_set_target(o_shadow.surf)
	// Clean surface
	draw_clear_alpha(c_black,0)
	draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
	
	gpu_set_blendmode(bm_subtract)
	draw_circle_color(x + sprite_width/2, y+ sprite_height/2,100,c_white,c_black,false)
	gpu_set_blendmode( bm_normal )
	
	surface_reset_target()
}