draw_set_font(Quivertal10)

if draw_hplost_countdown > 0
{
	draw_text_transformed_color(x - font_get_size(Quivertal10)/2, y - font_get_size(Quivertal10), dmg,1,1,0,c_red,c_red,c_red,c_red,1)
	draw_hplost_countdown -= 1
}
