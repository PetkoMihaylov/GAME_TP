///scr_fireball_state
//instance_create(x, y, obj_fireball);
//if (mouse_check_button(mb_left))
image_speed = 1;
/*if (sprite_index == spr_player_right)
{
    sprite_index = spr_player_attack_right;
}

if(sprite_index = spr_player_left
{
    sprite_index = spr_player_attack_left;
}
*/

var angle = point_direction(x, y, mouse_x, mouse_y);

var xxx = mouse_x;
var yyy = mouse_y;
var px = object11.x;
var py = object11.y;

    if(angle>=0 and angle<=45)
    {
        sprite_index = spr_player2_attack_right;
        face = RIGHT;
    }
    if(angle>=46 and angle <= 135)
    {
        sprite_index = spr_player2_attack_up;
        face = UP;
    }   
    if (angle>=136 and angle<=225)
    {
        sprite_index = spr_player2_attack_left;
        face = LEFT;
    }   
    if(angle>=226 and angle<=315)
    {
        sprite_index = spr_player2_attack_down;
        face = DOWN;
    }
    if(angle>=316)
    {
        sprite_index = spr_player2_attack_right;
        face = RIGHT;
    }
    
    
    if mouse_check_button_pressed(mb_left)
   {
   var xxy, yyx;
   xxy = window_view_mouse_get_x(0);
   var yyx = window_view_mouse_get_y(0);
   if xxy > 0 && xxy < 32 && yyx > 0 && yyx < 32
      {
      b_press[0] = true;
      }
   }
    

if (image_index >=3 and attacking == false)
{
    var xx = 0;
    var yy = 0;
    
    switch(sprite_index)
    {
        case spr_player2_attack_down:
            xx = x;
            yy = y + 12;
                break;
            
        case spr_player2_attack_up:
            xx = x;
            yy = y - 10;
                break;
                
        case spr_player2_attack_left:
            xx = x - 10;
            yy = y + 2;
                break;
                
        case spr_player2_attack_right:
            xx = x + 10;
            yy = y + 2;
                break;
        
    }

    /* if (alarm[1] == -1 && global.spellcost <= global.mana)
    {
        //var damage = instance_create(x, y, obj_fireball);
        //var damage = instance_create(object11.x, object11.y, obj_fireball);
        with (instance_create(object11.x, object11.y, obj_fireball)) { phy_bullet = true; 
        direction = point_direction(x, y, xxx, yyy);
        }
        //physics_apply_local_impulse(x, y, xxx, yyy); }
        //direction = point_direction(x,y, xxx, yyy);
        //direction = point_direction(x , y, mouse_x, mouse_y);
        speed = 4;
        //move_towards_point( xxx, yyy, 4 );
        //damage.creator = id;
        //damage.damage = global.attack;
        //global.cur_mouse_x = mouse_x;
        //global.cur_mouse_y = mouse_y;
        global.mana -= global.spellcost;
        //state = scr_move_state;
        attacking = true;
    }*/
    
    
}


   /* if (alarm[1] == -1 && global.spellcost <= global.mana)
    {
        instance_create(x, y, obj_fireball);

        //global.cur_mouse_x = mouse_x;
       // global.cur_mouse_y = mouse_y;
        state = scr_move_state;
        global.mana -= global.spellcost;
    }*/
/*else
{
    if(global.mana < global.maxmana)
    {
        global.mana += global.maxmana/50;
        if(global.mana > global.maxmana)
        {
            global.mana = global.maxmana;
        }
    }
}
}*/
