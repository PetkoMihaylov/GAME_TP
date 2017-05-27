//scr_move_state

//run script for keys
scr_get_input();

if(dash_key)
{
    var xdir = lengthdir_x(8, face*90);
    var ydir = lengthdir_y(8, face*90);
    //instance_place returns the id d'objet , si pas - retournera noone 
    var speaker = instance_place(x + dir, y + dir, obj_speaker);
    if (speaker != noone) 
    {
        with(speaker) // other only works in collision
        {
            if(!instance_exists(dialogue))
            {
                dialogue = instance_create(x + xoffset, y + yoffset, obj_dialogue);
                dialogue.text = text;
            }
            else
            {
                dialogue.text_page++;
                dialogue.text_count = 0;
                if(dialogue.text_page > array_length_1d(dialogue.text)-1)
                {
                    with(dialogue)
                    {
                        instance_destroy();
                    }
                }
            }
            
        }
    }
    else if(global.select == 1 )
    {
        if(obj_player_stats.stamina >= DASH_COST)
        {
            state = scr_dash_state;
            alarm[0] = room_speed/8;
            obj_player_stats.stamina -= DASH_COST;
            obj_player_stats.alarm[0] = room_speed;
        }
    }
    else if(global.select == 2 )
    {
        if(global.mana >= DASH_COST_MANA)
        {
            state = scr_dash_state;
            alarm[0] = room_speed/10;
            global.mana -= DASH_COST_MANA;
            obj_player_stats_2.alarm[0] = room_speed;
        }
    }
}

if(fireball_key && global.select == 2)
{
    state = scr_fireball_state;
}

if(attack_key && global.select == 1)
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
if(global.select == 1)
{
    image_speed = .2;
}
else if(global.select == 2)
{
    image_speed = .3;
}
if(len == 0)
{
    image_index = 0;
}

// remove - scr_get_face(); add_to else

if(global.select = 1)
{
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
}


if(global.select = 2)
{
    switch (face)
    {
        case RIGHT:
            sprite_index = spr_player2_right;
                break;
        case LEFT:
            sprite_index = spr_player2_left;
                break;
        case UP:
            sprite_index = spr_player2_up;
                break;
        case DOWN:
            sprite_index = spr_player2_down;
                break;
    }
}
