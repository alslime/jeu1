if distance_to_object(o_hero) < 320
{
	draw_healthbar(x, y - 10, x + sprite_width, y -6,((hpmax-hplost)/hpmax)*100,c_black,c_red,c_red,0,true,false)
}

draw_self()