// Change random seed each game
randomize()

vweapon = instance_create_layer(0,0,"lay_weapon",o_fist)
vweapon.owner = id

gear_icon = instance_create_layer(x,y,"lay_front",o_gear_icon)
weapon_icon = instance_create_layer(x,y,"lay_front",o_weapon_icon)
utility_icon = instance_create_layer(x,y,"lay_front",o_utility_icon)

inst_for_camera = instance_create_layer(x,y,"lay_shape_deco",o_for_camera)
inst_for_camera.owner = id

// Initial sequence
hero_state = "stand"
stand = layer_sequence_create("lay_front",x,y,se_stand)
last_sequence = stand
last_sequence_type = se_stand
walk_dust_count = 0

dash_time = 0

xp = 65
level = 1
xpmax = 100

jump_value = 6
walk_speed = 2
dash_speed = 4