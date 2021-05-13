// Change random seed each game
randomize()

audio_play_sound(sound_music_1,0,true)

vweapon = instance_create_layer(0,0,"lay_weapon",o_fist)
vweapon.owner = id

option_icon = instance_create_layer(x,y,"lay_front",o_option)
gem_icon = instance_create_layer(x,y,"lay_front",o_gem_icon)
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

xp = 0
level = 1
xpmax = 50

jump_value = 6
walk_speed = 2
dash_speed = 4

need_to_destroy_splash = false
equip_menu = false

wpn_abi_pow_chosen = 0

se_1 = se_punch1
se_2 = se_punch2
se_3 = se_punch3

if os_type == os_ios || os_type == os_android
{
	window_set_size(672,378)
	virtual_key_add(view_get_wport(0)-128,view_get_hport(0)-128,128,128,vk_space)
	virtual_key_add(view_get_wport(0)-128,view_get_hport(0)-256,128,128,vk_lshift)
	virtual_key_add(view_get_wport(0)-256,view_get_hport(0)-128,128,128,ord("H"))
	virtual_key_add(view_get_wport(0)-128,0,128,128,ord("I"))
}