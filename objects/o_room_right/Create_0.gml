fix = physics_fixture_create()
physics_fixture_set_box_shape(fix,0.5,room_height/2)
physics_fixture_bind(fix,id)
physics_fixture_set_collision_group(fix,0)
