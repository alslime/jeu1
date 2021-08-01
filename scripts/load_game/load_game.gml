//THIS FUNCTION IS FOR HERO ONLY
function load_game()
{
	ini_open("save.ini")
	
	total_gems = ini_read_real("save_1","number_of_gems",0);
	level = ini_read_real("save_1","hero_level",1);
	xp = ini_read_real("save_1","hero_xp",0);
	xpmax = ini_read_real("save_1","hero_xp_max",50);
	hpmax = ini_read_real("save_1","hero_hp_max",100);
	energymax = ini_read_real("save_1","hero_energy_max",50);
	
	inst_inventory = instance_find(o_inventory,0);
	for (n = 0; n < (inventory_item_type.last); n ++)
	{
		inst_inventory.items_owned[n] = ini_read_real("save_1",string(n),0);
	}
	
	//Items equipped
	chosen_weapon = ini_read_string("save_1","weapon_equipped","fists")
	chosen_support = ini_read_string("save_1","support_equipped","")

	//Weapons
	if instance_exists(o_fist)
	{
		inst_fist = instance_find(o_fist,0);
		inst_fist.level = ini_read_real("save_1","fist_level",1);
		inst_fist.familiarity_level = ini_read_real("save_1","fist_familiarity_level",1);
		inst_fist.familiarity_max_points = ini_read_real("save_1","fist_familiarity_max_points",50);
		inst_fist.familiarity_points = ini_read_real("save_1","fist_familiarity_points",0);
	}
	if instance_exists(o_light_sword)
	{
		inst_light_sword = instance_find(o_light_sword,0);
		inst_light_sword.level = ini_read_real("save_1","light_sword_level",1);
		inst_light_sword.familiarity_level = ini_read_real("save_1","light_sword_familiarity_level",1);
		inst_light_sword.familiarity_max_points = ini_read_real("save_1","light_sword_familiarity_max_points",50);
		inst_light_sword.familiarity_points = ini_read_real("save_1","light_sword_familiarity_points",0);
	}
	if instance_exists(o_light_sword)
	{
		inst_great_sword = instance_find(o_great_sword,0);
		inst_great_sword.level = ini_read_real("save_1","great_sword_level",1);
		inst_great_sword.familiarity_level = ini_read_real("save_1","great_sword_familiarity_level",1);
		inst_great_sword.familiarity_max_points = ini_read_real("save_1","great_sword_familiarity_max_points",50);
		inst_great_sword.familiarity_points = ini_read_real("save_1","great_sword_familiarity_points",0);
	}


	ini_close()
}