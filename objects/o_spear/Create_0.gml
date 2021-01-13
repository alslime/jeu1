mod_x = 12
mod_y = 8

anim_x = [		
				[0],												// Combo 0
				[0,0,0,0,5,10,15,20,30,40,40,40,30,20,10,0],		// Combo 1
				[0,0,0,5,10,15,20,30,40,50,60,60,60,60,45,30,15,0],	// Combo 2
				[15,30,45,60,60,60,45,30,15,0]						// Combo 3
		 ]
		  
anim_y = [		
				[-64/2 + 16/2 - mod_y - 80/2],													// Combo 0	
				[0,0,0,0,2,4,6,4,2,0,0,0,0,0,0,0],										// Combo 1
				[-5,-10,-15,-20,-19,-18,-17,-16,-15,-14,-13,-12,-11,-10,-7,-5,-3,0],	// Combo 2
				[0,0,0,0,0,0,0,0,0,0]													// Combo 3												// Combo 0
		 ]

anim_rot = [		
				[270],													// Combo 0
				[2,4,6,8,10,10,10,5,0,-5,-10,-15,-11,-7,3,0],			// Combo 1
				[3,5,7,10,10,10,10,10,10,10,10,10,10,10,10,7,5,0],		// Combo 2
				[0,0,0,0,0,0,0,0,0,0]									// Combo 3
		   ]
base_dmg = [
				1,	// Combo1
				2,	// Combo2
				3	// Combo3
		 ]
		  
//anim_sp = []

combo_finish_1_value = 48
combo_finish_2_value = 54
combo_finish_3_value = 30

sprite_l = sp_spear_l
sprite_r = sp_spear_r

fix_r = physics_fixture_create()
physics_fixture_set_polygon_shape(fix_r)
physics_fixture_add_point(fix_r,0,4)
physics_fixture_add_point(fix_r,57,0)
physics_fixture_add_point(fix_r,75,4)
physics_fixture_add_point(fix_r,80,7)
physics_fixture_add_point(fix_r,80,9)
physics_fixture_add_point(fix_r,75,12)
physics_fixture_add_point(fix_r,57,16)
physics_fixture_add_point(fix_r,0,12)
fix_bind = physics_fixture_bind(fix_r,id)

physics_fixture_set_density(fix_r,0.5)
physics_fixture_set_restitution(fix_r,0.1)
physics_fixture_set_collision_group(fix_r,0)
physics_fixture_set_linear_damping(fix_r,0.1)
physics_fixture_set_angular_damping(fix_r,0.1)
physics_fixture_set_friction(fix_r,0.2)
physics_fixture_set_sensor(fix_r,true)

fix_l = physics_fixture_create()
physics_fixture_set_polygon_shape(fix_l)
physics_fixture_add_point(fix_l,0,4)
physics_fixture_add_point(fix_l,0,12)
physics_fixture_add_point(fix_l,-57,16)
physics_fixture_add_point(fix_l,-75,12)
physics_fixture_add_point(fix_l,-80,9)
physics_fixture_add_point(fix_l,-80,7)
physics_fixture_add_point(fix_l,-75,4)
physics_fixture_add_point(fix_l,-57,0)

physics_fixture_set_density(fix_l,0.5)
physics_fixture_set_restitution(fix_l,0.1)
physics_fixture_set_collision_group(fix_l,0)
physics_fixture_set_linear_damping(fix_l,0.1)
physics_fixture_set_angular_damping(fix_l,0.1)
physics_fixture_set_friction(fix_l,0.2)
physics_fixture_set_sensor(fix_l,true)





