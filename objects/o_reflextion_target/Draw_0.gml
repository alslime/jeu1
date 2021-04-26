if(instance_capture != noone)
{
	if surface_exists(surface_mirror) == false
	{
		surface_mirror = surface_create(capture_width*1920/336,capture_height*1080/189)
	}
	surface_copy_part(surface_mirror,0,0,application_surface,instance_capture.x*1920/336,instance_capture.y*1080/189,capture_width,capture_height)

	draw_surface(surface_mirror,x,y)
}
else
{
	draw_self()	
}