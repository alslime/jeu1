if instance_exists(o_hero)
{
	inst_hero = instance_find(o_hero,0)
}
x_cam = camera_get_view_x(view_camera[0])
y_cam = camera_get_view_y(view_camera[0])

x_correction = x-x_cam
y_correction = y-y_cam

up = instance_create_layer(x+sprite_width-130,y,"lay_game_front_1",o_button_up)
up.owner = id
down = instance_create_layer(x+sprite_width-130,y+174,"lay_game_front_1",o_button_down)
down.owner = id

a = 0