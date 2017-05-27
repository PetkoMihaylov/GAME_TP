///scr_fireball_state
if (mouse_check_button(mb_left))
{
    if (alarm[1] == -1 && global.spellcost <= global.mana)
    {
        instance_create(x, y, obj_fireball);
        global.mana -= global.spellcost;
    }
}
else
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