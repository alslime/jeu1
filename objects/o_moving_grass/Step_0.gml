if instance_exists(o_enemy)
{
	inst_enemy = instance_nearest(x + sprite_width/2, y + sprite_height/2,o_enemy)
	dir_to_enemy = point_direction(x + sprite_width/2, y + sprite_height/2, inst_enemy.x + inst_enemy.sprite_width/2, inst_enemy.y + inst_enemy.sprite_height/2)
	if place_meeting(x,y,inst_enemy)
	{
		if dir_to_enemy > 90 && dir_to_enemy < 270
		{
			image_xskew = -5
		}
		else
		{
			image_xskew = 5
		}
		image_yskew = 0
	}
}
if place_meeting(x,y,inst_hero)
{
	dir_to_hero = point_direction(x + sprite_width/2, y + sprite_height/2, inst_hero.x + inst_hero.sprite_width/2, inst_hero.y + inst_hero.sprite_height/2)
	if dir_to_hero > 90 && dir_to_hero < 270
	{
		image_xskew = -5
	}
	else
	{
		image_xskew = 5
	}
	image_yskew = 0
}
	if image_xskew != 0
	{
		image_xskew *= 0.9
	}
	if image_yskew != 0
	{
		image_yskew *= 0.9
	}

