// Animação do logo
logo_frame = (logo_frame + 0.2) mod sprite_get_number(spr_nome);

// Navegação se o menu de opções não estiver aberto
if (!instance_exists(obj_Options_Menu)) {
    if (keyboard_check_pressed(vk_down)) {
        selected = (selected + 1) mod array_length(menu_items);
    }

    if (keyboard_check_pressed(vk_up)) {
        selected = (selected - 1 + array_length(menu_items)) mod array_length(menu_items);
    }

    if (keyboard_check_pressed(vk_enter)) {
        menu_items[selected].action();
    }

    for (var i = 0; i < array_length(menu_items); i++) {
        var my = start_y + i * (menu_item_height + menu_spacing);
        if (point_in_rectangle(mouse_x, mouse_y, start_x, my, start_x + menu_width, my + menu_item_height)) {
            selected = i;
            if (mouse_check_button_pressed(mb_left)) {
                menu_items[i].action();
            }
        }
    }
}

// Teclas de atalho para desenvolvedor
if (keyboard_check_pressed(ord("G"))) room_goto(Sala_Neutra_v1);
