if flash_countdown > 0
{
	flash_countdown -= 1
}

if flash_time > 0
{
	sprite_index = sp_gem_icon_flash
	if flash_countdown == 0
	{
		flash_time -= 1
		flash_countdown = 60
	}
}
else
{
	sprite_index = sp_gem_icon
}
