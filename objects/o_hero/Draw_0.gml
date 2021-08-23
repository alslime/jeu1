//Parralax Background
#region

if layer_exists("bg_1")
{
	layer_x("bg_1",camera_get_view_x(view_camera[0])/5)
}
if layer_exists("bg_2")
{
	layer_x("bg_2",camera_get_view_x(view_camera[0])/6)
}
if layer_exists("bg_3")
{
	layer_x("bg_3",camera_get_view_x(view_camera[0])/8)
}
if layer_exists("bg_4")
{
	layer_x("bg_4",camera_get_view_x(view_camera[0])/10)
}

#endregion

x1 = camera_get_view_x(view_camera[0])
y1 = camera_get_view_y(view_camera[0])

if instance_exists(o_front_surface) && equip_menu == false
{
	inst_front_surface = instance_find (o_front_surface,0)

	if surface_exists(inst_front_surface.front_surf)
	{	
		draw_set_font(fontbig)
		surface_set_target(inst_front_surface.front_surf)	
		
		//Damage rectangle
		draw_healthbar(x1 + 16, y1 + 16, x1 + 250 + (level), y1 + 51, ((hpmax-damage_rectangle_length)/hpmax)*100,hp_bar_col,c_white,c_white,0,true,true)
		draw_healthbar(x1 + 16, y1 + 16, x1 + 250 + (level), y1 + 51, ((hpmax-hplost)/hpmax)*100,hp_bar_col,c_red,c_red,0,false,true)
		draw_healthbar(x1 + 16, y1 + 59, x1 + 200 + (level div 2), y1 + 94, ((energymax-energylost)/energymax)*100,hp_bar_col,c_blue,c_blue,0,true,true)
		draw_healthbar(x1 + 16, y1 + 102, x1 + 150, y1 + 116, ((xp)/xpmax)*100,hp_bar_col,c_white,c_white,0,true,true)

		
		script_execute(text_outline,x1+58+4, y1+124-13,total_gems)
		script_execute(text_outline,x1+18+4, y1+16-13,string(hpmax-hplost))
		script_execute(text_outline,x1+18+4, y1+59-13,string(energymax-energylost))
		
		draw_text_transformed_color(x1+58+4, y1+124-12,total_gems,1,1,0,c_white,c_white,c_white,c_white,1)
		gem_icon.strg_width = string_width(total_gems)

		draw_text_transformed_color(x1+18+4, y1+16-12,string(hpmax-hplost),1,1,0,c_white,c_white,c_white,c_white,1)
		draw_text_transformed_color(x1+18+4, y1+59-12,string(energymax-energylost),1,1,0,c_white,c_white,c_white,c_white,1)
		
		surface_reset_target()
	}
}

// Shadow
#region

if instance_exists(o_shadow)
{
	inst_shadow = instance_find (o_shadow,0)

	if surface_exists(inst_shadow.surf)
	{
		surface_set_target(inst_shadow.surf)
	
		gpu_set_blendmode(bm_subtract)
		draw_sprite(sp_hero_light,0,x + sprite_width/2,y + sprite_height/2)
		gpu_set_blendmode(bm_normal)
	
		surface_reset_target()
	}
}

#endregion

// Equipment menu
#region

if equip_menu == true
{
	if surface_exists(inst_front_surface.front_surf)
	{	
		surface_set_target(inst_front_surface.front_surf)
		
		draw_rectangle_color(x1+15,y1+15,x1 + camera_get_view_width(view_camera[0])-15,y1 + camera_get_view_height(view_camera[0])-15,c_black,c_black,c_black,c_black,false)
		draw_rectangle_color(x1+16,y1+16,x1 + camera_get_view_width(view_camera[0])-16,y1 + camera_get_view_height(view_camera[0])-16,c_white,c_white,c_white,c_white,false)
		
		gpu_set_blendmode(bm_subtract)
		draw_rectangle_color(x1+20,y1+20,x1 + camera_get_view_width(view_camera[0])-20,y1 + camera_get_view_height(view_camera[0])-20,c_black,c_black,c_black,c_black,false)
		gpu_set_blendmode(bm_normal)
		
		draw_set_alpha(0.75)
		draw_rectangle_color(x1+20,y1+20,x1 + camera_get_view_width(view_camera[0])-20,y1 + camera_get_view_height(view_camera[0])-20,c_black,c_black,c_black,c_black,false)
		draw_set_alpha(1)
		
		draw_rectangle_color(x1+36,y1+72,x1 + camera_get_view_width(view_camera[0])/2 - 8,y1 + 265,c_white,c_white,c_white,c_white,false)
		draw_rectangle_color(x1+36,y1+72,x1 + camera_get_view_width(view_camera[0])/2 - 8,y1 + 265,c_black,c_black,c_black,c_black,true)
		
		gpu_set_blendmode(bm_subtract)
		draw_rectangle_color(x1+41,y1+77,x1 + camera_get_view_width(view_camera[0])/2 - 13,y1 + 260,c_black,c_black,c_black,c_black,false)
		gpu_set_blendmode(bm_normal)
		
		draw_set_alpha(0.75)
		draw_rectangle_color(x1+41,y1+77,x1 + camera_get_view_width(view_camera[0])/2 - 13,y1 + 260,c_black,c_black,c_black,c_black,false)
		draw_set_alpha(1)
		
		draw_set_font(fontbig)
		script_execute(text_outline,x1 + 36, y1 + 24-9,"Character")
		draw_text_transformed_color(x1 + 36, y1 + 24-8,"Character",1,1,0,c_white,c_white,c_white,c_white,1)

		script_execute(text_outline,x1 + 52, y1 + 75,"Level")
		draw_text_transformed_color(x1 + 52, y1 + 76,"Level",1,1,0,c_white,c_white,c_white,c_white,1)
		script_execute(text_outline,x1 + camera_get_view_width(view_camera[0])/2 - 20 - string_width(string(level)), y1 + 75,level)
		draw_text_transformed_color(x1 + camera_get_view_width(view_camera[0])/2 - 20 - string_width(string(level)), y1 + 76,level,1,1,0,c_white,c_white,c_white,c_white,1)
	
		script_execute(text_outline,x1 + 52, y1 + 117,"Max Health")
		draw_text_transformed_color(x1 + 52, y1 + 118,"Max Health",1,1,0,c_white,c_white,c_white,c_white,1)
		script_execute(text_outline,x1 + camera_get_view_width(view_camera[0])/2 - 20 - string_width(string(hpmax)), y1 + 117,hpmax)
		draw_text_transformed_color(x1 + camera_get_view_width(view_camera[0])/2 - 20 - string_width(string(hpmax)), y1 + 118,hpmax,1,1,0,c_white,c_white,c_white,c_white,1)
		
		script_execute(text_outline,x1 + 52, y1 + 159,"Max Energy")
		draw_text_transformed_color(x1 + 52, y1 + 160,"Max Energy",1,1,0,c_white,c_white,c_white,c_white,1)
		script_execute(text_outline,x1 + camera_get_view_width(view_camera[0])/2 - 20 - string_width(string(energymax)), y1 + 159,energymax)
		draw_text_transformed_color(x1 + camera_get_view_width(view_camera[0])/2 - 20 - string_width(string(energymax)), y1 + 160,energymax,1,1,0,c_white,c_white,c_white,c_white,1)
		
		script_execute(text_outline,x1 + 52, y1 + 201,"Experience")
		draw_text_transformed_color(x1 + 52, y1 + 202,"Experience",1,1,0,c_white,c_white,c_white,c_white,1)
		script_execute(text_outline,x1 + camera_get_view_width(view_camera[0])/2 - 20 - string_width(string(xp) + "/" + string(xpmax)), y1 + 201,string(xp) + "/" + string(xpmax))
		draw_text_transformed_color(x1 + camera_get_view_width(view_camera[0])/2 - 20 - string_width(string(xp) + "/" + string(xpmax)), y1 + 202,string(xp) + "/" + string(xpmax),1,1,0,c_white,c_white,c_white,c_white,1)
		
		draw_rectangle_color(x1 + camera_get_view_width(view_camera[0])/2+8,y1+72,x1 + camera_get_view_width(view_camera[0]) - 36,y1 + camera_get_view_height(view_camera[0]) - 36,c_white,c_white,c_white,c_white,false)
		draw_rectangle_color(x1 + camera_get_view_width(view_camera[0])/2+8,y1+72,x1 + camera_get_view_width(view_camera[0]) - 36,y1 + camera_get_view_height(view_camera[0]) - 36,c_black,c_black,c_black,c_black,true)
		
		gpu_set_blendmode(bm_subtract)
		draw_rectangle_color(x1 + camera_get_view_width(view_camera[0])/2+13,y1+77, x1 + camera_get_view_width(view_camera[0]) - 41,y1 + camera_get_view_height(view_camera[0]) - 41,c_black,c_black,c_black,c_black,false)
		gpu_set_blendmode(bm_normal)
		
		draw_set_alpha(0.75)
		draw_rectangle_color(x1 + camera_get_view_width(view_camera[0])/2+13,y1+77, x1 + camera_get_view_width(view_camera[0]) - 41,y1 + camera_get_view_height(view_camera[0]) - 41,c_black,c_black,c_black,c_black,false)
		draw_set_alpha(1)
		
		if !instance_exists(o_menu_scroll)
		{
			instance_create_layer(x1+camera_get_view_width(view_camera[0])/2+13+16,y1+387-19-16,"lay_game_front",o_menu_scroll)
		}
		
		if !instance_exists(o_equip_inventory)
		{
			i_equip_icon = instance_create_layer(x,y,"lay_game_front_1",o_equip_inventory)
			i_equip_icon.x_correct = 36
			i_equip_icon.y_correct = 284
		}

		if !instance_exists(o_equip_weapon)
		{
			w_equip_icon = instance_create_layer(x,y,"lay_game_front_1",o_equip_weapon)
			w_equip_icon.x_correct = 36
			w_equip_icon.y_correct = 397
		}
		
		if !instance_exists(o_equip_support)
		{
			s_equip_icon = instance_create_layer(x,y,"lay_game_front_1",o_equip_support)
			s_equip_icon.x_correct = 36
			s_equip_icon.y_correct = 510
		}
		
		if !instance_exists(o_equip_ability)
		{
			a_equip_icon = instance_create_layer(x,y,"lay_game_front_1",o_equip_ability)
			a_equip_icon.x_correct = 36
			a_equip_icon.y_correct = 623
		}

		surface_reset_target()
	}
}


#endregion

//physics_draw_debug()
//draw_self()