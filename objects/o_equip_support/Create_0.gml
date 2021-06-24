event_inherited()
name = "Support"
sprite = sp_new_heal_icon
sprite_contour = sp_contour_heal_icon

total_support = 0
support_array = array_create(total_support)

if inst_hero.heal_aquired
{
	support_array[total_support] = o_heal_button
	total_support ++
}
if inst_hero.instant_heal_aquired
{
	support_array[total_support] = o_instant_heal_button
	total_support ++
}