//Jump
{
	
if keyboard_check (ord("W"))
{
	jump = 1
}
else
{
	jump = 0
}

}

// Movments Left/Right
{

if keyboard_check_pressed(ord("A")) //&&  ( !Collision_Wall_L(self) ) && (combo_1 = 0) && (combo_2 = 0) && (combo_3 = 0)
{
    dir = 180
}
if keyboard_check_pressed( ord("D") ) // && ( !Collision_Wall_R( self) ) && (combo_1 = 0) && (combo_2 = 0) && (combo_3 = 0)
{
    dir = 0
}
if keyboard_check( ord("A") ) && keyboard_check( ord("D") ) //&& (combo_1 = 0) && (combo_2 = 0) && (combo_3 = 0)
{
    if dir == 180 //&&  ( !Collision_Wall_L(self) )
    {
        hspeed = -4
        if (jump == 0)
        {
            sprite_index = sp_hero_walk_l
        }
        else if (jump == 1)
        {
            sprite_index = sp_hero_jump_l
        }
    }
    else if dir == 0 //&& ( !Collision_Wall_R(self) )
    {
        hspeed = 4
        if (jump == 0)
        {
            sprite_index = sp_hero_walk_r
        }
        else if (jump == 1)
        {
            sprite_index = sp_hero_r
		}
	}
}
else if keyboard_check( ord("A") ) // &&  ( !Collision_Wall_L(self) ) && (combo_1 = 0) && (combo_2 = 0) && (combo_3 = 0)
{
    hspeed = -4
    dir = 180
    if (jump == 0)
    {
		sprite_index = sp_hero_walk_l
    }
    else if (jump == 1)
    {
		sprite_index = sp_hero_jump_l
    }
}
else if keyboard_check( ord("D") ) // && ( !Collision_Wall_R( self) ) && (combo_1 = 0) && (combo_2 = 0) && (combo_3 = 0)
{
    hspeed = 4
    dir = 0
    if (jump == 0)
    {
		sprite_index = sp_hero_walk_r
    }
    else if (jump == 1)
    {
		sprite_index = sp_hero_jump_r
    }
}

else
{
    hspeed = 0;
    if (dir == 180) && (jump == 0)
    {
        sprite_index = sp_hero_l
    }
    else if (dir == 0) && (jump == 0)
    {
        sprite_index = sp_hero_r
    } 
}

}