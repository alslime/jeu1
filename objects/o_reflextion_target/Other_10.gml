for (var index = 0; index < instance_number(o_capture_target); index += 1)
{
	var inst = instance_find(o_capture_target,index)
	
	if inst.name == capture_name
	{
		instance_capture = inst
		capture_width = abs(inst.bbox_left - inst.bbox_right)
		capture_height = abs(inst.bbox_top - inst.bbox_bottom)
		
		inst.image_alpha = 0.2
	}
}