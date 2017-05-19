///scr_dash_state
//facing direction
if( len == 0)
{
    dir = face*90;
}

//dash speed
len = spd*6;

//Get the horisontal and vertical speed;
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Move
phy_position_x += hspd;
phy_position_y += vspd;

var dash = instance_create(x, y, obj_dash_effect);

//Create the dash effect
if(global.select = 1)
{
    dash.sprite_index = sprite_index;
    dash.image_index = image_index;
}
if(global.select = 2)
{

}
