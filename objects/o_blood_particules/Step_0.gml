countdown -= 1

if countdown <= 0
{
	instance_destroy()
}

image_alpha = countdown/300
image_blend = blood_colour