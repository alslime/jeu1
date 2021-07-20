near_warp = instance_nearest(x,y,o_warp)
room_goto(near_warp.next_room)
if near_warp.place == "right"
{
	x = near_warp.targetx + 10
}
if near_warp.place == "left"
{
	x = near_warp.targetx - 10 - sprite_width
}

y = near_warp.targety

save_game()