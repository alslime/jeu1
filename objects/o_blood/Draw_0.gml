x1 = phy_position_x
y1 = phy_position_y
x2 = x1 + 1
y2 = y1 + 1

draw_rectangle_color(x1,y1,x2,y2,blood_colour,blood_colour,blood_colour,blood_colour,false)

if blood_touch_ground
{
	blood_stain = instance_create_layer(x,y+2,"lay_shape_deco_front",o_blood_stain)
	blood_stain.col = blood_colour
	instance_destroy ()
}