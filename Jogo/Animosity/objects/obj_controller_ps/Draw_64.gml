draw_set_alpha(global.transition_alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, 3000, 1000, false);
draw_set_alpha(1);

if (show_level_name) {
    var text = level_name;
    var y_pos = 128; 
    var shadow_offset = 5; 

    // Desenha sombra
    draw_set_alpha(alpha);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_font(fnt_level); 
    draw_set_color(c_black); 
    draw_text(display_get_gui_width() / 2 + shadow_offset, y_pos + shadow_offset, text);

    draw_set_color(c_white);
    draw_text(display_get_gui_width() / 2, y_pos, text);

    draw_set_alpha(1); // reseta alpha
}