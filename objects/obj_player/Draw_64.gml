/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if room == rm_nameSelect and !obj_game.nameCreation
{
    draw_set_font(fnt_Impact);

    draw_text(x, y + 80, name);
}