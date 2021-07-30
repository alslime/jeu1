fix = physics_fixture_create()
physics_fixture_set_polygon_shape(fix)
physics_fixture_add_point(fix, 0,0)
physics_fixture_add_point(fix, 36, 0)
physics_fixture_add_point(fix, 36, 84)
physics_fixture_add_point(fix, 0, 84)
physics_fixture_set_density(fix,0.5)
physics_fixture_set_restitution(fix,0)
physics_fixture_set_collision_group(fix,0)
physics_fixture_set_linear_damping(fix,0)
physics_fixture_set_angular_damping(fix,0)
physics_fixture_set_friction(fix,0)
fix_binded = physics_fixture_bind(fix,id)

current_fix = "fix"
change_fixture_for_crouching = false
change_fixture_for_standing = false

save_game()