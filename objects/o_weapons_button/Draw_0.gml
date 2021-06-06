event_inherited()

image_blend = c_white
if place_meeting(x,y,o_mouse)
{
	image_blend = c_orange
}
if inst_hero.equip_button_chosen == id
{
	image_blend = colour
	draw_set_font(fontbig)
	draw_set_alpha(1)
	//Name
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+16, y1 + 71,instance.item_name)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+16, y1 + 72,instance.item_name,1,1,0,c_white,c_white,c_white,c_white,1)
	//Level
	draw_set_font(fontsmall)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+16, y1 + 113,"Level")
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+16, y1 + 114,"Level",1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+16+300-string_width(instance.level), y1 + 113,instance.level)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+16+300-string_width(instance.level), y1 + 114,instance.level,1,1,0,c_white,c_white,c_white,c_white,1)
	//Dmg
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+16, y1 + 155,"Damage")
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+16, y1 + 156,"Damage",1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+16+300-string_width(instance.base_damage), y1 + 155,instance.base_damage)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+16+300-string_width(instance.base_damage), y1 + 156,instance.base_damage,1,1,0,c_white,c_white,c_white,c_white,1)
	//Speed
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+16, y1 + 197,"Speed")
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+16, y1 + 198,"Speed",1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+16+300-string_width(instance.weapon_speed), y1 + 197,instance.weapon_speed)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+16+300-string_width(instance.weapon_speed), y1 + 198,instance.weapon_speed,1,1,0,c_white,c_white,c_white,c_white,1)
	//Range
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+16, y1 + 239,"Range")
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+16, y1 + 240,"Range",1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+16+300-string_width(instance.range), y1 + 239,instance.range)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+16+300-string_width(instance.range), y1 + 240,instance.range,1,1,0,c_white,c_white,c_white,c_white,1)
}
if inst_hero.chosen_weapon == button_name
{
	image_blend = c_red
}

draw_self()
