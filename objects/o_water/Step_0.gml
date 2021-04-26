object = instance_find(o_hero,0) 

if collision_line(x,y,x+sprite_width,y,object,false,false)
{
	if touch_water_last_step == false
	{
		touch_water_last_step = true
		n = abs(object.x + object.sprite_width/2 - x)
		if n < 4
		{
			n = 4
		}
		if n > sprite_width - 4
		{
			n = sprite_width - 4
		}
		instance_create_layer(x+n,y,"lay_front",o_water_splash)
	}
}
else
{
	touch_water_last_step = false
}