///scr_move_state

//run script for keys
scr_get_input();

if(dash_key and obj_player_stats.stamina >= 5)
{
    state = scr_dash_state;
    alarm[0] = room_speed/8;
    obj_player_stats.stamina -= DASH_COST;
    obj_player_stats.alarm[0] = room_speed;
}

if(attack_key)
{
    image_index = 0;
    state = scr_attack_state;
}



// Get the axis
//2 xaxis and yaxis instant variables;


//Get direction
dir = point_direction(0, 0, xaxis, yaxis);

//Get the length
if(xaxis == 0 and yaxis == 0)
{
    len = 0;
}
else
{
    len = spd;
    scr_get_face();
}

//Get the horisontal and vertical speed;
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Move
phy_position_x += hspd;
phy_position_y += vspd;

//Control the sprite
image_speed = .2;

if(len == 0)
{
    image_index = 0;
}

// remove - scr_get_face(); add_to else

switch (face)
{
    case RIGHT:
        sprite_index = spr_player_right;
            break;
    case LEFT:
        sprite_index = spr_player_left;
            break;
    case UP:
        sprite_index = spr_player_up;
            break;
    case DOWN:
        sprite_index = spr_player_down;
            break;
}