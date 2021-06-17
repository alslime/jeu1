event_inherited()
name = "Support"
sprite = sp_new_heal_icon
sprite_contour = sp_contour_heal_icon

total_support = 0
support_array = array_create(total_support)

if inst_hero.heal_aquired
{
	support_array[0] = o_heal_button
	total_support ++
}