fix = physics_fixture_create()
physics_fixture_set_polygon_shape(fix)
//physics_fixture_add_point(fixture1, -sprite_width/2, sprite_height/2)
//physics_fixture_add_point(fixture1, -sprite_width/2, -sprite_height/2)
//physics_fixture_add_point(fixture1, sprite_width/2, -sprite_height/2)
//physics_fixture_add_point(fixture1, sprite_width/2, sprite_height/2)
physics_fixture_add_point(fix, 0,0);
physics_fixture_add_point(fix, -40, -100);
physics_fixture_add_point(fix, 40, -100);

physics_fixture_set_restitution(fix,0.1)
physics_fixture_set_collision_group(fix,0)
physics_fixture_set_linear_damping(fix,0.1)
physics_fixture_set_angular_damping(fix,0.1)
physics_fixture_set_friction(fix,0.1)

fixbind = physics_fixture_bind_ext(fix,id, 0, 0)
//physics_fixture_bind(fix,id)