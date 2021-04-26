draw_set_font(fontsmall)

if draw_hplost_countdown > 0
{
	script_execute(text_outline,x - font_get_size(fontsmall)/2, y - font_get_size(fontsmall)-1, dmg)
	draw_text_transformed_color(x - font_get_size(fontsmall)/2, y - font_get_size(fontsmall), dmg,1,1,0,col,col,col,col,1)
	draw_hplost_countdown -= 1
}
