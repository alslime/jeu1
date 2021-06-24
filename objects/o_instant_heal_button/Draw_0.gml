event_inherited()
level = instance.instant_heal_lvl
support_value = instance.instant_regen_value
if inst_hero.equip_button_chosen == id
{
	//Dmg
	draw_set_font(fontsmall)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 155,"Heal")
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 156,"Heal",1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(support_value), y1 + 155,support_value)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(support_value), y1 + 156,support_value,1,1,0,c_white,c_white,c_white,c_white,1)
}