function splash_water()
{
	water = instance_nearest(x,y,o_water)

	if collision_line(water.x,water.y,water.x+water.sprite_width,water.y,argument0,false,false)
	{
		if touch_water_last_step == false
		{
			touch_water_last_step = true
			i = abs(argument0.x + argument0.sprite_width/2 - water.x)
			if i < 4
			{
				i = 4
			}
			if i > water.sprite_width - 4
			{
				i = water.sprite_width - 4
			}
			instance_create_layer(water.x+i,water.y,"lay_front",o_water_splash)
		}
	}
	else
	{
		touch_water_last_step = false
	}
}