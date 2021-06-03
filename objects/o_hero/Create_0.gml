// Change random seed each game
randomize()

//audio_play_sound(sound_music_1,0,true)

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
before_was_crouch_dashing = false
toggle_crouch = false

xp = 0
level = 1
xpmax = 50

jump_init_value = 16
walk_init_speed = 6
dash_init_speed = 12

double_jump = false

can_attack = true
can_abilities = true
can_jump = true

need_to_destroy_splash = false
equip_menu = false

wpn_abi_pow_chosen = 0

pickup_range = 100

se_1 = se_punch1
se_2 = se_punch2
se_3 = se_punch3

if os_type == os_ios || os_type == os_android
{
	window_set_size(448,252)
	//virtual_key_add(view_get_wport(0)-512,view_get_hport(0)-512,512,512,vk_space)
	//virtual_key_add(view_get_wport(0)-512,view_get_hport(0)-1024,512,512,vk_lshift)
	//virtual_key_add(view_get_wport(0)-1024,view_get_hport(0)-512,512,512,ord("H"))
	//virtual_key_add(view_get_wport(0)-512,0,512,512,ord("I"))
}