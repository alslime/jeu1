punch1 = layer_sequence_create("lay_hero",x,y,se_light_sword1)	//Length in steps = Frames/FPS * 60 steps/s
combo1_length = layer_sequence_get_length(punch1)*60 div 16
layer_sequence_destroy(punch1)

punch2 = layer_sequence_create("lay_hero",x,y,se_light_sword2)
combo2_length = layer_sequence_get_length(punch2)*60 div 60
layer_sequence_destroy(punch2)

punch3 = layer_sequence_create("lay_hero",x,y,se_light_sword3)
combo3_length = layer_sequence_get_length(punch3)*60 div 60
layer_sequence_destroy(punch3)

base_dmg = [0,1,1,1]