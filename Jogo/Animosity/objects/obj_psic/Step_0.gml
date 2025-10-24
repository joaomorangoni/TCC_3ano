// ------------------------------
// 1️⃣ Ativar diálogo
// ------------------------------
if (!dialogue_active) {
    if (place_meeting(x, y, Player)) {
        if (keyboard_check_pressed(ord("X"))) {
            dialogue_active = true;
            current_node = 0; // reinicia o diálogo
			Player.control = false;
			Player.HUD = false;
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
        current_node = node.options[0].next;
    }
    if (keyboard_check_pressed(ord("2")) && array_length(node.options) >= 2) {
        current_node = node.options[1].next;
    }
    if (keyboard_check_pressed(ord("3")) && array_length(node.options) >= 3) {
        current_node = node.options[2].next;
    }

    // Mouse
    if (mouse_check_button_pressed(mb_left) && option_hover != -1) {
        current_node = node.options[option_hover].next;
    }

    // Encerrar diálogo quando não há opções (Espaço)
    if (array_length(node.options) == 0) {
        if (keyboard_check_pressed(vk_space)) {
            dialogue_active = false;
			Player.HUD = true;
			Player.control = true;
        }
    }
}
