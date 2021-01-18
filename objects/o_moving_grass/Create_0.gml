rdm = irandom(3)
if rdm == 0
{
	sprite_index = sp_moving_grass
}
if rdm == 1
{
	sprite_index = sp_moving_grass1
}
if rdm == 2
{
	sprite_index = sp_moving_grass2
}
if rdm == 3
{
	sprite_index = sp_moving_grass3
}



if instance_exists(o_hero)
{
	inst_hero = instance_find (o_hero,0)
}
xVar = 0
yVar = 0