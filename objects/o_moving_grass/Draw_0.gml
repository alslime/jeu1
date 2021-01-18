if dir_to_hero < 90 || dir_to_hero > 270
{
	draw_line_width_color(x,y,x - xVar, y - height*10 + yVar, 2, dark_green,col[rdm])
}
else
{
	draw_line_width_color(x,y,x + xVar, y - height*10 + yVar, 2, dark_green,col[rdm])
}
