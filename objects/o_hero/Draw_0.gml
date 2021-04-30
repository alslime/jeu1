x1 = camera_get_view_x(view_camera[0])
y1 = camera_get_view_y(view_camera[0])

if instance_exists(o_front_surface) && equip_menu == false
{
	inst_front_surface = instance_find (o_front_surface,0)

	if surface_exists(inst_front_surface.front_surf)
	{	
		draw_set_font(fontbig)
		surface_set_target(inst_front_surface.front_surf)	

		draw_set_font(fontsmall)
		draw_healthbar(x1 + 12, y1 + 4, x1 + 50 + level div 2, y1 + 16, ((hpmax-hplost)/hpmax)*100,hp_bar_col,c_red,c_red,0,true,true)
		draw_healthbar(x1 + 12, y1 + 19, x1 + 40 + level div 3, y1 + 31, ((energymax-energylost)/energymax)*100,hp_bar_col,c_blue,c_blue,0,true,true)
		draw_healthbar(x1 + 4, y1 + 4, x1 + 9, y1 + 31, ((xp)/xpmax)*100,hp_bar_col,c_white,c_white,3,true,true)
		
		script_execute(text_outline,x1 + 17, y1 + 30,total_gems)
		script_execute(text_outline,x1 +15, y1 + 2,string(hpmax-hplost))
		script_execute(text_outline,x1 +15, y1 + 17,string(energymax-energylost))
		
		draw_text_transformed_color(x1 + 17, y1 + 31,total_gems,1,1,0,c_white,c_white,c_white,c_white,1)
		gem_icon.strg_width = string_width(total_gems)

		draw_text_transformed_color(x1 +15, y1 + 3,string(hpmax-hplost),1,1,0,c_white,c_white,c_white,c_white,1)
		draw_text_transformed_color(x1 +15, y1 + 18,string(energymax-energylost),1,1,0,c_white,c_white,c_white,c_white,1)
		
		surface_reset_target()
	}
}


// Shadow
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

// Equipment menu
#region

if equip_menu == true
{
	if surface_exists(inst_front_surface.front_surf)
	{	
		surface_set_target(inst_front_surface.front_surf)
		
		draw_rectangle_color(x1+8,y1+8,x1 + camera_get_view_width(view_camera[0])-9,y1 + camera_get_view_height(view_camera[0])-9,c_black,c_black,c_black,c_black,false)
		draw_rectangle_color(x1+9,y1+9,x1 + camera_get_view_width(view_camera[0])-10,y1 + camera_get_view_height(view_camera[0])-10,c_white,c_white,c_white,c_white,false)
		
		gpu_set_blendmode(bm_subtract)
		draw_rectangle_color(x1+10,y1+10,x1 + camera_get_view_width(view_camera[0])-11,y1 + camera_get_view_height(view_camera[0])-11,c_black,c_black,c_black,c_black,false)
		gpu_set_blendmode(bm_normal)
		
		draw_set_alpha(0.75)
		draw_rectangle_color(x1+10,y1+10,x1 + camera_get_view_width(view_camera[0])-11,y1 + camera_get_view_height(view_camera[0])-11,c_black,c_black,c_black,c_black,false)
		draw_set_alpha(1)
		
		draw_rectangle_color(x1+18,y1+27,x1 + 154,y1 + 84,c_white,c_white,c_white,c_white,false)
		
		gpu_set_blendmode(bm_subtract)
		draw_rectangle_color(x1+19,y1+28,x1 + 153,y1 + 83,c_black,c_black,c_black,c_black,false)
		gpu_set_blendmode(bm_normal)
		
		draw_set_alpha(0.75)
		draw_rectangle_color(x1+19,y1+28,x1 + 153,y1 + 83,c_black,c_black,c_black,c_black,false)
		draw_set_alpha(1)
		
		script_execute(text_outline,x1 + 19, y1 + 10,"Stats")
		draw_text_transformed_color(x1 + 19, y1 + 11,"Stats",1,1,0,c_white,c_white,c_white,c_white,1)
		
		script_execute(text_outline,x1 + 24, y1 + 28,"Level")
		draw_text_transformed_color(x1 + 24, y1 + 29,"Level",1,1,0,c_white,c_white,c_white,c_white,1)
		script_execute(text_outline,x1 + 150 - string_width(string(level)), y1 + 28,level)
		draw_text_transformed_color(x1 + 150 - string_width(string(level)), y1 + 29,level,1,1,0,c_white,c_white,c_white,c_white,1)
	
		script_execute(text_outline,x1 + 24, y1 + 41,"Max Health")
		draw_text_transformed_color(x1 + 24, y1 + 42,"Max Health",1,1,0,c_white,c_white,c_white,c_white,1)
		script_execute(text_outline,x1 + 150 - string_width(string(hpmax)), y1 + 41,hpmax)
		draw_text_transformed_color(x1 + 150 - string_width(string(hpmax)), y1 + 42,hpmax,1,1,0,c_white,c_white,c_white,c_white,1)
		
		script_execute(text_outline,x1 + 24, y1 + 54,"Max Energy")
		draw_text_transformed_color(x1 + 24, y1 + 55,"Max Energy",1,1,0,c_white,c_white,c_white,c_white,1)
		script_execute(text_outline,x1 + 150 - string_width(string(energymax)), y1 + 54,energymax)
		draw_text_transformed_color(x1 + 150 - string_width(string(energymax)), y1 + 55,energymax,1,1,0,c_white,c_white,c_white,c_white,1)
		
		script_execute(text_outline,x1 + 24, y1 + 67,"Experience")
		draw_text_transformed_color(x1 + 24, y1 + 68,"Experience",1,1,0,c_white,c_white,c_white,c_white,1)
		script_execute(text_outline,x1 + 150 - string_width(string(xp) + "/" + string(xpmax)), y1 + 67,string(xp) + "/" + string(xpmax))
		draw_text_transformed_color(x1 + 150 - string_width(string(xp) + "/" + string(xpmax)), y1 + 68,string(xp) + "/" + string(xpmax),1,1,0,c_white,c_white,c_white,c_white,1)
		
		draw_rectangle_color(x1+163,y1+27,x1 + 317,y1 + camera_get_view_height(view_camera[0]) - 18,c_white,c_white,c_white,c_white,false)
		
		gpu_set_blendmode(bm_subtract)
		draw_rectangle_color(x1+164,y1+28,x1 + 316,y1 + camera_get_view_height(view_camera[0]) - 19,c_black,c_black,c_black,c_black,false)
		gpu_set_blendmode(bm_normal)
		
		draw_set_alpha(0.75)
		draw_rectangle_color(x1+164,y1+28,x1 + 316,y1 + camera_get_view_height(view_camera[0]) - 19,c_black,c_black,c_black,c_black,false)
		draw_set_alpha(1)
		
		if wpn_abi_pow_chosen == 0
		{
			script_execute(text_outline,x1 + 164, y1 + 10,"Inventory")
			draw_text_transformed_color(x1 + 164, y1 + 11,"Inventory",1,1,0,c_white,c_white,c_white,c_white,1)
		}
		
		if !instance_exists(o_equip_weapon)
		{
			w_equip_icon = instance_create_layer(x,y,"lay_game_front",o_equip_weapon)
			w_equip_icon.x_correct = 23
			w_equip_icon.y_correct = 92
		}
		
		if !instance_exists(o_equip_support)
		{
			s_equip_icon = instance_create_layer(x,y,"lay_game_front",o_equip_support)
			s_equip_icon.x_correct = 23
			s_equip_icon.y_correct = 120
		}
		
		if !instance_exists(o_equip_ability)
		{
			a_equip_icon = instance_create_layer(x,y,"lay_game_front",o_equip_ability)
			a_equip_icon.x_correct = 23
			a_equip_icon.y_correct = 148
		}	
		
		surface_reset_target()
	}
}


#endregion

//physics_draw_debug()
//draw_self()