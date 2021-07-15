enum inventory_item_type
{
	//Inventory
	wpn_stone_1 = 0,
	wpn_stone_2 = 1,
	wpn_stone_3 = 2,
	wpn_stone_4 = 3,
	wpn_stone_5 = 4,

	support_crystal_1 = 5,
	support_crystal_2 = 6,
	support_crystal_3 = 7,
	support_crystal_4 = 8,
	support_crystal_5 = 9,
	
	crystal = 10,
	metal = 11,
	gear = 12,
	
	//Blueprints
	bp_fist = 13,
	bp_light_sword = 14,
	bp_great_sword =15,
	
	//Powers
	heal = 16,
	instant_heal = 17,
	
	//Support
	double_jump = 18,
	gravity_defy_dash = 19,
	
	//Weapon
	fist = 20,
	light_sword = 21,
	great_sword =22,
	
	last = 23
}

items_owned = array_create(inventory_item_type.last)
