event_inherited()

image_blend = c_white
if place_meeting(x,y,o_mouse)
{
	image_blend = c_orange
}
if inst_hero.equip_button_chosen == id
{
	image_blend = colour
	
	draw_sprite(sprite_icon,0,x1+camera_get_view_width(view_camera[0])/2+13+16,y1+72+20)
	
	draw_set_font(fontbig)
	draw_set_alpha(1)
	//Name
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 77,instance.item_name)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 78,instance.item_name,1,1,0,c_white,c_white,c_white,c_white,1)
	//Level
	draw_set_font(fontsmall)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 123,"Level")
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 124,"Level",1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(instance.level), y1 + 123,instance.level)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(instance.level), y1 + 124,instance.level,1,1,0,c_white,c_white,c_white,c_white,1)
	//Dmg
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 155,"Damage")
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 156,"Damage",1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(instance.base_damage), y1 + 155,instance.base_damage)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(instance.base_damage), y1 + 156,instance.base_damage,1,1,0,c_white,c_white,c_white,c_white,1)
	//Speed
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 187,"Speed")
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 188,"Speed",1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(instance.weapon_speed), y1 + 187,instance.weapon_speed)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(instance.weapon_speed), y1 + 188,instance.weapon_speed,1,1,0,c_white,c_white,c_white,c_white,1)
	//Range
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 219,"Range")
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 220,"Range",1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(instance.range), y1 + 219,instance.range)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(instance.range), y1 + 220,instance.range,1,1,0,c_white,c_white,c_white,c_white,1)
	//Description
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+17, y1 + 267,instance.description)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+17, y1 + 268,instance.description,1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+17, y1 + 299,instance.description2)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+17, y1 + 300,instance.description2,1,1,0,c_white,c_white,c_white,c_white,1)
	//Familarity
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229+16, y1 + 123,"Familiarity")
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229+16, y1 + 124,"Familiarity",1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+458+16-string_width(instance.familiarity_level), y1 + 123,instance.familiarity_level)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+458+16-string_width(instance.familiarity_level), y1 + 124,instance.familiarity_level,1,1,0,c_white,c_white,c_white,c_white,1)
	draw_healthbar(x1+camera_get_view_width(view_camera[0])/2+13+130+229+15, y1 + 167,x1+camera_get_view_width(view_camera[0])/2+13+130 + 471, y1 + 189, ((instance.familiarity_points)/instance.familiarity_max_points)*100,inst_hero.hp_bar_col,c_white,c_white,0,true,true)
}
if inst_hero.chosen_weapon == button_name
{
	image_blend = c_red
}

draw_self()
