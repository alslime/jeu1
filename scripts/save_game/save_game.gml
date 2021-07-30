function save_game()
{
	inst_hero = instance_find(o_hero,0)
	if file_exists("save.ini")
	{
		file_delete("save.ini")
	}
	
	ini_open("save.ini");
	
	//Basic
	#region
	
	var saved_gems = inst_hero.total_gems;
	ini_write_real("save_1","number_of_gems",saved_gems);
	
	var saved_level = inst_hero.level;
	ini_write_real("save_1","hero_level",saved_level);
	
	var saved_xp = inst_hero.xp;
	ini_write_real("save_1","hero_xp",saved_xp);
	
	var saved_xpmax = inst_hero.xpmax;
	ini_write_real("save_1","hero_xp_max",saved_xpmax);
	
	var saved_hpmax = inst_hero.hpmax;
	ini_write_real("save_1","hero_hp_max",saved_hpmax);
	
	var saved_energymax = inst_hero.energymax;
	ini_write_real("save_1","hero_energy_max",saved_energymax);
	
	#endregion
	//Inventory Array
	#region
	
	inst_inventory = instance_find(o_inventory,0);
	for (n = 0; n < (inventory_item_type.last); n ++)
	{
		var inventory_to_save = inst_inventory.items_owned[n];
		ini_write_real("save_1",string(n),inventory_to_save);
	}
	
	#endregion
	//Weapon Stats
	#region
	
	if instance_exists(o_fist)
	{
		inst_fist = instance_find(o_fist,0);
		var saved_fist_level = inst_fist.level;
		ini_write_string("save_1","fist_level",saved_fist_level);
		var saved_fist_familiarity_level = inst_fist.familiarity_level;
		ini_write_string("save_1","fist_familiarity_level",saved_fist_familiarity_level);
		var saved_fist_familiarity_max_points = inst_fist.familiarity_max_points;
		ini_write_string("save_1","fist_familiarity_max_points",saved_fist_familiarity_max_points);
		var saved_fist_familiarity_points = inst_fist.familiarity_points;
		ini_write_string("save_1","fist_familiarity_points",saved_fist_familiarity_points);
	}
	if instance_exists(o_light_sword)
	{
		inst_light_sword = instance_find(o_light_sword,0);
		var saved_light_sword_level = inst_light_sword.level;
		ini_write_string("save_1","light_sword_level",saved_light_sword_level);
		var saved_light_sword_familiarity_level = inst_light_sword.familiarity_level;
		ini_write_string("save_1","light_sword_familiarity_level",saved_light_sword_familiarity_level);
		var saved_light_sword_familiarity_max_points = inst_light_sword.familiarity_max_points;
		ini_write_string("save_1","light_sword_familiarity_max_points",saved_light_sword_familiarity_max_points);
		var saved_light_sword_familiarity_points = inst_light_sword.familiarity_points;
		ini_write_string("save_1","light_sword_familiarity_points",saved_light_sword_familiarity_points);
	}
	if instance_exists(o_great_sword)
	{
		inst_great_sword = instance_find(o_great_sword,0);
		var saved_great_sword_level = inst_great_sword.level;
		ini_write_string("save_1","great_sword_level",saved_great_sword_level);
		var saved_great_sword_familiarity_level = inst_great_sword.familiarity_level;
		ini_write_string("save_1","great_sword_familiarity_level",saved_great_sword_familiarity_level);
		var saved_great_sword_familiarity_max_points = inst_great_sword.familiarity_max_points;
		ini_write_string("save_1","great_sword_familiarity_max_points",saved_great_sword_familiarity_max_points);
		var saved_great_sword_familiarity_points = inst_great_sword.familiarity_points;
		ini_write_string("save_1","great_sword_familiarity_points",saved_great_sword_familiarity_points);
	}

	#endregion
	//Items Equipped
	#region
	
	var saved_chosen_weapon = inst_hero.chosen_weapon;
	ini_write_string("save_1","weapon_equipped",saved_chosen_weapon);
	var saved_chosen_support = inst_hero.chosen_support;
	ini_write_string("save_1","support_equipped",saved_chosen_support);
	
	#endregion
	
	ini_close();
}