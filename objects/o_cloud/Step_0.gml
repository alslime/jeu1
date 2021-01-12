if physics_test_overlap(x,y,0,o_room_left)
{
	touch = true
}
if !physics_test_overlap(x,y,0,o_room_left) && touch
{
	instance_create_layer(room_width,random_range(-50,400),"lay_moving_instances_back",o_cloud)
	instance_destroy()
}