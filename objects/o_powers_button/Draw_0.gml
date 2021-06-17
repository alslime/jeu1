event_inherited()

contour_colour = c_white
if inst_hero.equip_button_chosen == id
{
	if !instance_exists(o_activate_power)
	{
		instance_create_layer(x1+camera_get_view_width(view_camera[0])/2+13+16,y1+273,"lay_game_front",o_activate_power)
	}
	inst_activate = instance_find(o_activate_power,0)
	inst_activate.owner = id	
	if !instance_exists(o_deactivate_power)
	{
		instance_create_layer(x1+camera_get_view_width(view_camera[0])/2+13+16+285+16,y1+273,"lay_game_front",o_deactivate_power)
	}
	inst_deactivate = instance_find(o_deactivate_power,0)
	inst_deactivate.owner = id	
	
	contour_colour = colour

	draw_sprite(sprite,0,x1+camera_get_view_width(view_camera[0])/2+13+16,y1+72+20)
	
	draw_set_font(fontbig)
	draw_set_alpha(1)
	//Name
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 77,item_name)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 78,item_name,1,1,0,c_white,c_white,c_white,c_white,1)
	//Description
	draw_set_font(fontsmall)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 123,description1)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 124,description1,1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 155,description2)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 156,description2,1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 187,description3)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 188,description3,1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 219,description4)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 220,description4,1,1,0,c_white,c_white,c_white,c_white,1)
}