base_dmg = [0,round((3+(1.25*level))*(1+familiarity_level*0.05)),round((5+(1.25*level))*(1+familiarity_level*0.05)),round((5+(1.25*level))*(1+familiarity_level*0.05))]
base_damage = base_dmg[1]

if current_combo_idx == 1
{
	knock_back = true
	knock_back_value = 6
}
else if current_combo_idx == 2
{
	knock_back = true
	knock_back_value = 6
}
else if current_combo_idx == 3
{
	knock_back = true
	knock_back_value = 6
}
else
{
	knock_back = false
}