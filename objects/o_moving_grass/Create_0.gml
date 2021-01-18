rdm = irandom(1)
if rdm == 0
{
	sprite_index = sp_moving_grass1
}
if rdm == 1
{
	sprite_index = sp_moving_grass2
}

rdm_height = irandom_range(1,3)
image_yscale = -rdm_height


if instance_exists(o_hero)
{
	inst_hero = instance_find (o_hero,0)
}

image_xskew = 0
image_yskew = 0