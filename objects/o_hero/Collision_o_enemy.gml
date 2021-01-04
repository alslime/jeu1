hplost = hplost + 5
countdown = 10
if countdown > 0
{
    countdown = countdown - 1
    if dir == 180
    {
		sprite_index = sp_hero_hit_l
    }
    if dir == 0
    {
		sprite_index = sp_hero_hit_r
    }
}
