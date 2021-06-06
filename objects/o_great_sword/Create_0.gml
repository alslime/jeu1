event_inherited()
punch1 = layer_sequence_create("lay_hero",x,y,se_great_sword1)	//Length in steps = Frames/FPS * 60 steps/s
combo1_length = layer_sequence_get_length(punch1)*60 div 20
layer_sequence_destroy(punch1)

punch2 = layer_sequence_create("lay_hero",x,y,se_great_sword2)
combo2_length = layer_sequence_get_length(punch2)*60 div 18
layer_sequence_destroy(punch2)

punch3 = layer_sequence_create("lay_hero",x,y,se_great_sword3)
combo3_length = layer_sequence_get_length(punch3)*60 div 22
layer_sequence_destroy(punch3)

base_dmg = [0,3,5,5]

item_name = "Great Sword"
level = 1
base_damage = base_dmg[1]
weapon_speed = "Slow"
range = "Long"
special_attributes = "None"
description = "A sword as big as they come."
description2 = ""