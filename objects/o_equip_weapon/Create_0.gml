event_inherited()
name = "Weapons"
sprite = sp_new_fist_icon

total_weapons = 0
weapons_array = array_create(total_weapons)

if instance_exists(o_fist)
{
	weapons_array[0] = o_fist_button
	total_weapons ++
}
if instance_exists(o_light_sword)
{
	weapons_array[1] = o_light_sword_button
	total_weapons ++
}

if instance_exists(o_fist)
{
	weapons_array[2] = o_great_sword_button
	total_weapons ++
}