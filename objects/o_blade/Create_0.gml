mod_x = 50
mod_y = 15

anim_x = [		
				[0],												// Combo 0
				[-16,-12,-4,5,10,10,10],			// Combo 1
				[-16,-12,-4,5,10,10,10],		// Combo 2
				[-16,-12,-4,5,10,10,10]						// Combo 3
		 ]
		  
anim_y = [		
				[0],																	// Combo 0	
				[-30,-16,-9,0,4,4,4],			// Combo 1
				[10,0,-10,-30,-50,-50,-50],		// Combo 2
				[-30,-16,-9,0,4,4,4]													// Combo 3												// Combo 0
		 ]

anim_rot = [		
				[170],													// Combo 0
				[-135,-75,-25,-10,0,0,0],			// Combo 1
				[135,75,25,10,0,0,0],		// Combo 2
				[-135,-75,-25,-10,0,0,0]									// Combo 3
		   ]
base_dmg = [
				2,	// Combo1
				3,	// Combo2
				3	// Combo3
		 ]
		  
//anim_sp = []

combo_finish_1_value = 21
combo_finish_2_value = 21
combo_finish_3_value = 21

sprite_l = sp_blade_l
sprite_r = sp_blade_r

fix_r = physics_fixture_create()
physics_fixture_set_polygon_shape(fix_r)
physics_fixture_add_point(fix_r,0,5)
physics_fixture_add_point(fix_r,13,1)
physics_fixture_add_point(fix_r,55,2)
physics_fixture_add_point(fix_r,60,5)
physics_fixture_add_point(fix_r,60,7)
physics_fixture_add_point(fix_r,55,10)
physics_fixture_add_point(fix_r,13,11)
physics_fixture_add_point(fix_r,0,7)
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
physics_fixture_add_point(fix_l,0,5)
physics_fixture_add_point(fix_l,0,7)
physics_fixture_add_point(fix_l,-13,11)
physics_fixture_add_point(fix_l,-55,10)
physics_fixture_add_point(fix_l,-60,7)
physics_fixture_add_point(fix_l,-60,5)
physics_fixture_add_point(fix_l,-55,2)
physics_fixture_add_point(fix_l,-13,1)







physics_fixture_set_density(fix_l,0.5)
physics_fixture_set_restitution(fix_l,0.1)
physics_fixture_set_collision_group(fix_l,0)
physics_fixture_set_linear_damping(fix_l,0.1)
physics_fixture_set_angular_damping(fix_l,0.1)
physics_fixture_set_friction(fix_l,0.2)
physics_fixture_set_sensor(fix_l,true)





