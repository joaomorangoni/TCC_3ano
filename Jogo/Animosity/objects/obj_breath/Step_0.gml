// ------------------------------
// 1️⃣ Controle da barra de respiração
// ------------------------------
lifetime--
// Subir barra enquanto ESPAÇO é pressionado (inspira)
if (keyboard_check(vk_space)) {
    bar_value += bar_speed;
    breathing_in = true;
} else { // expira
    bar_value -= bar_speed;
    breathing_in = false;
}

// Limites da barra
if (bar_value > bar_max) bar_value = bar_max;
if (bar_value < bar_min) bar_value = bar_min;

// ------------------------------
// 2️⃣ Ciclo completo: quando descende totalmente
// ------------------------------
if (lifetime <= 0) {

    // Procura instância do Luan
    var luan_inst = instance_nearest(x, y, obj_random1);
    if (luan_inst != noone) {
        var node = luan_inst.dialogue_tree[luan_inst.current_node];

        // Verifica se há opções antes de avançar
        if (array_length(node.options) > 0) {
            luan_inst.current_node = node.options[0].next;
        }
    }

    // Destrói o mini game após completar o ciclo
    instance_destroy();
}
