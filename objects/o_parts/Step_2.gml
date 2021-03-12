inst_hero = instance_find(o_hero,0)

if inst_hero.hero_state == "dash"
{
	part = instance_create_layer(x,y,"lay_hero_back",o_afterimage)
	if inst_hero.dir == 0
	{
		script_execute(create_afterimage,part,id,15,sprite_index,false)
	}
	else
	{
		script_execute(create_afterimage,part,id,15,sprite_index,true)
	}
}