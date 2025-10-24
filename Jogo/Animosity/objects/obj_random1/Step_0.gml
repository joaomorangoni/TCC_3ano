// ------------------------------
// 1️⃣ Ativar diálogo
// ------------------------------
if (!dialogue_active) {
    if (place_meeting(x, y, Player)) {
        if (keyboard_check_pressed(ord("X"))) {
            dialogue_active = true;
			Player.control = false;
			Player.HUD = false;
			Player.velh = 0;
            current_node = 0; // reinicia o diálogo
        }
    }
}

// ------------------------------
// 2️⃣ Inputs do diálogo
// ------------------------------
if (dialogue_active) {
    var node = dialogue_tree[current_node];

    // Teclado (1,2,3)
    if (keyboard_check_pressed(ord("1")) && array_length(node.options) >= 1) {
        // Checa se é a opção de mini game
        if (node.options[0].text == "(Ajudar Luan a respirar)") {
            // Cria o mini game apenas se ainda não estiver ativo
            if (instance_number(obj_breath) == 0) {
                // Cria na layer padrão, profundidade -100 para ficar na frente
                instance_create_depth(display_get_gui_width()/2, 300, -100, obj_breath);
            }
        } else {
            current_node = node.options[0].next;
        }
    }

    if (keyboard_check_pressed(ord("2")) && array_length(node.options) >= 2) {
        current_node = node.options[1].next;
    }
    if (keyboard_check_pressed(ord("3")) && array_length(node.options) >= 3) {
        current_node = node.options[2].next;
    }

    // Mouse
    if (mouse_check_button_pressed(mb_left) && option_hover != -1) {
        if (node.options[option_hover].text == "(Ajudar Luan a respirar)") {
            if (instance_number(obj_minigame_barrinha) == 0) {
                instance_create_layer(display_get_gui_width()/2, 300, "HUD", obj_breath);
            }
        } else {
            current_node = node.options[option_hover].next;
        }
    }

    // Encerrar diálogo quando não há opções (Espaço)
    if (array_length(node.options) == 0) {
        if (keyboard_check_pressed(vk_space)) {
            dialogue_active = false;
			Player.control = true;
			Player.HUD = true;
			image_speed = 0;
        }
    }
}
