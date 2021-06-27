event_inherited()

contour_colour = c_white
if inst_hero.equip_button_chosen == id
{
	contour_colour = colour
	
	draw_sprite(sprite_icon,0,x1+camera_get_view_width(view_camera[0])/2+13+16,y1+72+20)
	
	draw_set_font(fontbig)
	draw_set_alpha(1)
	//Name
	//script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 77,name)
	//draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 78,name,1,1,0,c_white,c_white,c_white,c_white,1)
	//Description
	//draw_set_font(fontsmall)
	//script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 123,"Level")
	//draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 124,"Level",1,1,0,c_white,c_white,c_white,c_white,1)
	//script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(level), y1 + 123,level)
	//draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130+229-string_width(level), y1 + 124,level,1,1,0,c_white,c_white,c_white,c_white,1)
	//Lore
	//script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+17, y1 + 267,description1)
	//draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+17, y1 + 268,description1,1,1,0,c_white,c_white,c_white,c_white,1)
	//script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+17, y1 + 299,description2)
	//draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+17, y1 + 300,description2,1,1,0,c_white,c_white,c_white,c_white,1)
}
if place_meeting(x,y,o_mouse)
{
	contour_colour = c_orange
}

draw_self()
draw_sprite_ext(sprite_contour,0,x,y,1,1,0,contour_colour,1)

