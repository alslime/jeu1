if distance_to_object(o_hero) < 75
{
	draw_healthbar(x + sprite_width/2 - 10, y - 4, x + sprite_width/2 + 10, y -7,((hpmax-hplost)/hpmax)*100,hp_bar_col,c_red,c_red,0,true,false)
}

//physics_draw_debug()
