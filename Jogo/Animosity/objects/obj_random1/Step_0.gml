// Ativar diálogo quando jogador pressiona E perto de Luan

var _player = place_meeting(x, y, Player);
if (!dialogue_active) {
    if(_player) {
        if (keyboard_check_pressed(global.inputs.interact)) {
            dialogue_active = true;
            current_node = 0;
			Player.control = false;
			Player.HUD = false;
        }
    }
}

// Se o diálogo está ativo, processa inputs
if (dialogue_active) {
    var node = dialogue_tree[current_node];

    // Teclado (1, 2, 3)
    if (keyboard_check_pressed(ord("I")) && array_length(node.options) >= 1) {
        current_node = node.options[0].next;
    }
    if (keyboard_check_pressed(ord("O")) && array_length(node.options) >= 2) {
        current_node = node.options[1].next;
    }
    if (keyboard_check_pressed(ord("P")) && array_length(node.options) >= 3) {
        current_node = node.options[2].next;
    }

    // Mouse (clique)
    if (mouse_check_button_pressed(mb_left) && option_hover != -1) {
        current_node = node.options[option_hover].next;
    }

    // Encerrar diálogo quando não há opções (Espaço)
    if (array_length(node.options) == 0) {
        if (keyboard_check_pressed(vk_space)) {
            dialogue_active = false;
			Player.control = true;
			Player.HUD = true;
        }
    }
}
