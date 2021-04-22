inst_hero.total_gems += gemValue
if inst_hero.gem_icon.flash_time < 5
{
	inst_hero.gem_icon.flash_time += 1
}
instance_destroy()
