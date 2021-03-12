if visible && n == 0
{
	instance_create_layer(x,y,"lay_hero",o_walking_dust)
	n = 1
}

if !visible
{
	n = 0
}