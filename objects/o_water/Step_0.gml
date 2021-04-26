object = instance_find(o_hero,0) 

if collision_line(x,y,x+sprite_width,y,object,false,false)
{
	if touch_water_last_step == false
	{
		touch_water_last_step = true
		n = 0
		while !collision_point(n,y,object,false,false)
		{
			n += 1
		}
		instance_create_layer(n+object.sprite_width/2,y,"lay_front",o_vase_piece1)
	}
}
else
{
	touch_water_last_step = false
}