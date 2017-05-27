///scr_fireball_state
//instance_create(x, y, obj_fireball);
//if (mouse_check_button(mb_left))
{
    if (alarm[1] == -1 && global.spellcost <= global.mana)
    {
        instance_create(x, y, obj_fireball);

        //global.cur_mouse_x = mouse_x;
       // global.cur_mouse_y = mouse_y;
        state = scr_move_state;
        global.mana -= global.spellcost;
    }
}
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
<<<<<<< HEAD
}
=======
}*/
>>>>>>> origin/master
