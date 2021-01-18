if layer_has_instance("lay_front",id)
{
	sprite_index = sp_moving_grass2
}
if layer_has_instance("lay_shape_deco",id)
{
	sprite_index = sp_moving_grass1
}

rdm_height = random_range(1,3)
image_yscale = -rdm_height

if instance_exists(o_hero)
{
	inst_hero = instance_find (o_hero,0)
}

image_xskew = 0
image_yskew = 0