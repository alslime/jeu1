// Change random seed each game
randomize()

//audio_play_sound(sound_music_1,0,true)

// Init variables 
#region

inventory_obj = instance_create_layer(x,y,"lay_shape_deco",o_inventory)
support_obj = instance_create_layer(x,y,"lay_shape_deco",o_support)
option_icon = instance_create_layer(x,y,"lay_game_front_1",o_option)
gem_icon = instance_create_layer(x,y,"lay_game_front_1",o_gem_icon)
weapon_icon = instance_create_layer(x,y,"lay_game_front_1",o_weapon_icon)
utility_icon = instance_create_layer(x,y,"lay_game_front_1",o_utility_icon)

inst_for_camera = instance_create_layer(x,y,"lay_shape_deco",o_for_camera)
inst_for_camera.owner = id

// Initial sequence
hero_state = "stand"
stand = layer_sequence_create("lay_front",x,y,se_stand)
last_sequence = stand
last_sequence_type = se_stand

xp = 0
xpmax = 50
level = 1
walk_dust_count = 0
dash_time = 0
before_was_crouch_dashing = false
toggle_crouch = false
double_jump = false
can_attack = true
can_abilities = true
can_jump = true
need_to_destroy_splash = false
equip_menu = false
wpn_abi_pow_chosen = 0
create_buttons = false
equip_button_chosen = 0
support = false
se_1 = se_punch1
se_2 = se_punch2
se_3 = se_punch3

chosen_weapon = "fists"
chosen_support = ""

#endregion

//IMPORTANT VARIABLES
dash_init_speed = 12
jump_init_value = 16
walk_init_speed = 6
pickup_range = 100

double_jump_activated = false
gravity_defy_dash_activated = false

//Create weapons
inst_fist = instance_create_layer(x,y,"lay_weapon",o_fist)
inst_fist.owner = id
vweapon = inst_fist

inst_light_sword = instance_create_layer(x,y,"lay_weapon",o_light_sword)
inst_light_sword.owner = id

inst_great_sword = instance_create_layer(x,y,"lay_weapon",o_great_sword)
inst_great_sword.owner = id

if os_type == os_ios || os_type == os_android
{
	window_set_size(672,378)
}

load_game()
