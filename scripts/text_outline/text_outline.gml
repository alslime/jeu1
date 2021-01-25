function text_outline()
{
	//draw_text_outlined(x, y, outline color, string color, string)  
	var xx,yy;  
	xx = argument[0];  
	yy = argument[1] + 1;  
  
	//Outline  
	draw_set_color(c_black);  
	draw_text(xx+1, yy+1, argument[2]);  
	draw_text(xx-1, yy-1, argument[2]);  
	draw_text(xx,   yy+1, argument[2]);  
	draw_text(xx+1,   yy, argument[2]);  
	draw_text(xx,   yy-1, argument[2]);  
	draw_text(xx-1,   yy, argument[2]);  
	draw_text(xx-1, yy+1, argument[2]);  
	draw_text(xx+1, yy-1, argument[2]); 
}