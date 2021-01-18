fix = physics_fixture_create()
physics_fixture_set_box_shape(fix,room_width/2,0.5)
physics_fixture_bind(fix,id)
physics_fixture_set_collision_group(fix,0)
