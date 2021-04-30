if inst_hero.total_gems != last_gem_count && flash_countdown <= 0
{
	flash_countdown = 60
}

if flash_countdown > 0
{
	sprite_index = sp_gem_icon_flash
	flash_countdown -= 1
}
else
{
	sprite_index = sp_gem_icon
}

last_gem_count = inst_hero.total_gems
