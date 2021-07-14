event_inherited()

contour_colour = c_white
if inst_hero.equip_button_chosen == id
{
	contour_colour = colour
	
	draw_sprite(sprite_icon,0,x1+camera_get_view_width(view_camera[0])/2+13+16,y1+72+20)
	
	draw_set_font(fontbig)
	draw_set_alpha(1)
	//Name
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 77,name)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 78,name,1,1,0,c_white,c_white,c_white,c_white,1)
	//Type
	draw_set_font(fontsmall)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 123,type)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+130, y1 + 124,type,1,1,0,c_white,c_white,c_white,c_white,1)
	//Description
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+17, y1 + 187+12,description1)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+17, y1 + 188+12,description1,1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+17, y1 + 219+12,description2)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+17, y1 + 220+12,description2,1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+17, y1 + 251+12,description3)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+17, y1 + 252+12,description3,1,1,0,c_white,c_white,c_white,c_white,1)
	script_execute(text_outline,x1+camera_get_view_width(view_camera[0])/2+13+17, y1 + 283+12,description4)
	draw_text_transformed_color(x1+camera_get_view_width(view_camera[0])/2+13+17, y1 + 284+12,description4,1,1,0,c_white,c_white,c_white,c_white,1)
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

