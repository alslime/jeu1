fix = physics_fixture_create()
physics_fixture_set_polygon_shape(fix)
physics_fixture_add_point(fix, 0,0)
physics_fixture_add_point(fix, 9, 0)
physics_fixture_add_point(fix, 9, 21)
physics_fixture_add_point(fix, 0, 21)
physics_fixture_set_density(fix,0.5)
physics_fixture_set_collision_group(fix,0)
fix_binded = physics_fixture_bind(fix,id)
before_was_crouch = false