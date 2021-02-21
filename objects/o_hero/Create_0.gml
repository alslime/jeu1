// Change random seed each game
randomize()

vweapon = instance_create_layer(0,0,"lay_weapon",o_fist)
vweapon.owner = id
sweapon = instance_create_layer(0,0,"lay_weapon",o_spear)
sweapon.owner = id

gear_icon = instance_create_layer(x,y,"lay_front",o_gear_icon)

inst_for_camera = instance_create_layer(x,y,"lay_shape_deco",o_for_camera)
inst_for_camera.owner = id

// Initial sequence
hero_state = "stand_r"
stand = layer_sequence_create("lay_front",x,y,se_stand)
last_sequence = stand
last_sequence_type = se_stand

dash_time = 0