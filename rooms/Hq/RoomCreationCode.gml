var wleft = instance_create_layer(-1,room_height/2,"lay_shape_deco",o_room_left)
wleft.left_room = Room1
wleft.r_width = 1920
var wright = instance_create_layer(room_width,room_height/2,"lay_shape_deco",o_room_right)
wright.right_room = Hq
wright.r_width = 3000
instance_create_layer(room_width/2,room_height + 80,"lay_shape_deco",o_room_bottom)