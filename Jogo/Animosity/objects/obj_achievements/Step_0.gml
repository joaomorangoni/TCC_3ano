if (!show_details) {
    if (keyboard_check_pressed(vk_down)) {
        selected_index = min(selected_index + 1, array_length(global.achievements) - 1);

        // Atualiza descrição quebrada
        var desc = global.achievements[selected_index].description;
        description_lines = string_split(desc, "\n");
    }
    if (keyboard_check_pressed(vk_up)) {
        selected_index = max(selected_index - 1, 0);

        // Atualiza descrição quebrada
        var desc = global.achievements[selected_index].description;
        description_lines = string_split(desc, "\n");
    }
    if (keyboard_check_pressed(vk_enter)) {
        show_details = true;
    }
} else {
    if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_enter)) {
        show_details = false;
    }
}

if (!show_details && mouse_check_button_pressed(mb_left)) {
    for (var i = 0; i < array_length(global.achievements); i++) {
        var y_i = 100 + i * 40;
        if (mouse_y > y_i && mouse_y < y_i + 30 && mouse_x < 350) {
            selected_index = i;
            show_details = true;
            break;
        }
    }
}

// Clique com mouse no botão de voltar
if (!show_details && mouse_check_button_pressed(mb_left)) {
    if (mouse_x > btn_x && mouse_x < btn_x + btn_w &&
        mouse_y > btn_y && mouse_y < btn_y + btn_h) {
        room_goto(Sala_Menu); // sua sala de menu principal
    }
}

// Voltar com ESC
if (!show_details && keyboard_check_pressed(vk_escape)) {
    room_goto(Sala_Menu);
}

