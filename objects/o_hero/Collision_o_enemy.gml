nearest_enemy = instance_nearest(x + sprite_width/2,y + sprite_height/2,o_enemy)
dir_to_enemy = point_direction(x + sprite_width/2, y + sprite_height/2,nearest_enemy.x + nearest_enemy.sprite_width/2, nearest_enemy.y + nearest_enemy.sprite_height/2)

if countdown == 0
{
	hplost += nearest_enemy.enemy_dmg
}
countdown = 10
