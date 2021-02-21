punch1 = layer_sequence_create("lay_hero",x,y,se_punch2)	//Length in steps = Frames/FPS * 60 steps/s
combo1_length = layer_sequence_get_length(punch1)*60/25
layer_sequence_destroy(punch1)

punch2 = layer_sequence_create("lay_hero",x,y,se_punch2)
combo2_length = layer_sequence_get_length(punch2)*60/25
layer_sequence_destroy(punch2)

punch3 = layer_sequence_create("lay_hero",x,y,se_punch3)
combo3_length = layer_sequence_get_length(punch3)*60/21
layer_sequence_destroy(punch3)

base_dmg = [1,2,3] 