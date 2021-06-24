event_inherited()
name = "Weapons"
sprite = sp_new_fist_icon
sprite_contour = sp_contour_new_fist_icon

total_weapons = 0
weapons_array = array_create(total_weapons)

if inst_hero.fist_aquired
{
	weapons_array[total_weapons] = o_fist_button
	total_weapons ++
}
if inst_hero.light_sword_aquired
{
	weapons_array[total_weapons] = o_light_sword_button
	total_weapons ++
}

if inst_hero.great_sword_aquired
{
	weapons_array[total_weapons] = o_great_sword_button
	total_weapons ++
}