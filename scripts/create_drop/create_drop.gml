function create_drop()
{
	instance = instance_create_layer(x,y,"lay_gems",argument0)
	instance.drop_subtype = argument1
	instance.drop_number = argument2
}