event_inherited()

contour_colour = c_white
if inst_hero.equip_button_chosen == id
{
	if !instance_exists(o_craft_button)
	{
		instance_create_layer(x1+camera_get_view_width(view_camera[0])/2+13+16,y1+273,"lay_game_front",o_craft_button)
	}
	inst_craft = instance_find(o_craft_button,0)
	inst_craft.owner = id	
	if !instance_exists(o_dismantle_button)
	{
		instance_create_layer(x1+camera_get_view_width(view_camera[0])/2+13+16+285+16,y1+273,"lay_game_front",o_dismantle_button)
	}
	inst_dismantle = instance_find(o_dismantle_button,0)
	inst_dismantle.owner = id	
	
	contour_colour = colour

	draw_sprite(sprite,0,x1+camera_get_view_width(view_camera[0])/2+13+16,y1+72+20)
	
	draw_set_font(fontbig)
	draw_set_alpha(1)
	//Name
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 77,item_name)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 78,item_name,1,1,0,c_white,c_white,c_white,c_white,1)
	//Craft
	draw_set_font(fontsmall)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 123,"Craft")
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 124,"Craft",1,1,0,c_white,c_white,c_white,c_white,1)
	items_owned_col = c_red
	if craft_item_1_owned >= craft_item_1_number
	{
		items_owned_col = c_lime
	}
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 155,craft_item_1)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 156,craft_item_1,1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(string(craft_item_1_number) + " (" + string(craft_item_1_owned) + ")"), y1 + 155,string(craft_item_1_number))
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(string(craft_item_1_number) + " (" + string(craft_item_1_owned) + ")"), y1 + 156,string(craft_item_1_number),1,1,0,items_owned_col,items_owned_col,items_owned_col,items_owned_col,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(" (" + string(craft_item_1_owned) + ")"), y1 + 155," (" + string(craft_item_1_owned) + ")")
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(" (" + string(craft_item_1_owned) + ")"), y1 + 156," (" + string(craft_item_1_owned) + ")",1,1,0,c_white,c_white,c_white,c_white,1)

	items_owned_col = c_red
	if craft_item_2_owned >= craft_item_2_number
	{
		items_owned_col = c_lime
	}
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 187,craft_item_2)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 188,craft_item_2,1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(string(craft_item_2_number) + " (" + string(craft_item_2_owned) + ")"), y1 + 187,string(craft_item_2_number))
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(string(craft_item_2_number) + " (" + string(craft_item_2_owned) + ")"), y1 + 188,string(craft_item_2_number),1,1,0,items_owned_col,items_owned_col,items_owned_col,items_owned_col,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(" (" + string(craft_item_2_owned) + ")"), y1 + 187," (" + string(craft_item_2_owned) + ")")
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(" (" + string(craft_item_2_owned) + ")"), y1 + 188," (" + string(craft_item_2_owned) + ")",1,1,0,c_white,c_white,c_white,c_white,1)
	
	items_owned_col = c_red
	if craft_item_3_owned >= craft_item_3_number
	{
		items_owned_col = c_lime
	}
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 219,craft_item_3)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 220,craft_item_3,1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(string(craft_item_3_number) + " (" + string(craft_item_3_owned) + ")"), y1 + 219,string(craft_item_3_number))
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(string(craft_item_3_number) + " (" + string(craft_item_3_owned) + ")"), y1 + 220,string(craft_item_3_number),1,1,0,items_owned_col,items_owned_col,items_owned_col,items_owned_col,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(" (" + string(craft_item_3_owned) + ")"), y1 + 219," (" + string(craft_item_3_owned) + ")")
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(" (" + string(craft_item_3_owned) + ")"), y1 + 220," (" + string(craft_item_3_owned) + ")",1,1,0,c_white,c_white,c_white,c_white,1)
	//Dismantle
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229+16, y1 + 123,"Dismantle")
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229+16, y1 + 124,"Dismantle",1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229+16, y1 + 155,craft_item_1)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229+16, y1 + 156,craft_item_1,1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229+229+16-string_width(dismantle_item_1_number), y1 + 155,dismantle_item_1_number)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229+229+16-string_width(dismantle_item_1_number), y1 + 156,dismantle_item_1_number,1,1,0,c_white,c_white,c_white,c_white,1)

	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229+16, y1 + 187,craft_item_2)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229+16, y1 + 188,craft_item_2,1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229+229+16-string_width(dismantle_item_2_number), y1 + 187,dismantle_item_2_number)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229+229+16-string_width(dismantle_item_2_number), y1 + 188,dismantle_item_2_number,1,1,0,c_white,c_white,c_white,c_white,1)

	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229+16, y1 + 219,craft_item_3)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229+16, y1 + 220,craft_item_3,1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229+229+16-string_width(dismantle_item_3_number), y1 + 219,dismantle_item_3_number)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229+229+16-string_width(dismantle_item_3_number), y1 + 220,dismantle_item_3_number,1,1,0,c_white,c_white,c_white,c_white,1)
}
if place_meeting(x,y,o_mouse)
{
	contour_colour = c_orange
}
draw_self()
draw_sprite_ext(sprite_contour,0,x,y,1,1,0,contour_colour,1)
//Number of items
draw_set_font(fontsmall)
script_execute(text_outline,x+sprite_width-string_width(number_of_item)-1,y+sprite_height-string_height(number_of_item)+4,number_of_item)
draw_text_transformed_color(x+sprite_width-string_width(number_of_item)-1,y+sprite_height-string_height(number_of_item)+5,number_of_item,1,1,0,c_white,c_white,c_white,c_white,1)