// Change random seed each game
randomize()

vweapon = instance_create_layer(x,y,"lay_weapon",o_spear)
vweapon.owner = id

gear_icon = instance_create_layer(x,y,"lay_front",o_gear_icon)

inst_for_camera = instance_create_layer(x,y,"lay_shape_deco",o_for_camera)
inst_for_camera.owner = id

// Initial sequence
stand_l = layer_sequence_create("lay_front",x,y,se_stand_r)
last_sequence = stand_r
last_sequence_type = se_stand_r