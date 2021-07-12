enum inventory_item_type
{
	//Blueprints
	
	
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
	
	//Powers
	heal = 10,
	instant_heal = 11,
	
	//Support
	double_jump = 10,
	gravity_defy_dash = 11,
	
	//Weapon
	fist = 12,
	light_sword = 13,
	great_sword =14,
	
	last = 15
}

items_owned = array_create(inventory_item_type.last)
