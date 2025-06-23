draw_set_font(fnt_arial); // Use o default ou defina sua fonte
draw_set_color(c_white);

// Desenhar lista de conquistas
var x_pos = 100;
var y_pos = 100;

for (var i = 0; i < array_length(global.achievements); i++) {
    var ach = global.achievements[i];
    var text = "- " + ach.name;

    if (!ach.unlocked) {
        draw_set_alpha(0.6);
        text += " [???]";
    } else {
        draw_set_alpha(1);
    }

    if (i == selected_index) {
        draw_set_color(c_yellow);
    } else {
        draw_set_color(c_white);
    }

    draw_text(x_pos, y_pos + i * 40, text);
}

draw_set_alpha(1);

// Desenhar janela de detalhes, se ativada
if (show_details) {
    var ach = global.achievements[selected_index];
    
    var box_x = 400;
    var box_y = 100;
    var box_w = 360;
    var box_h = 180;

    draw_set_color(c_black);
    draw_set_alpha(0.85);
    draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false);
    draw_set_alpha(1);

    draw_set_color(c_white);
    draw_text(box_x + 20, box_y + 20, "Nome: " + ach.name);
    draw_text(box_x + 20, box_y + 50, "Objetivo: " + ach.goal);

    if (ach.unlocked) {
        draw_text(box_x + 20, box_y + 80, "Descrição:");

        for (var i = 0; i < array_length(description_lines); i++) {
            draw_text(box_x + 20, box_y + 100 + i * 20, description_lines[i]);
        }
    } else {
        draw_text(box_x + 20, box_y + 80, "Descrição: ???");
    }

    draw_text(box_x + 20, box_y + 140 + array_length(description_lines)*20, "[Enter para fechar]");
}


draw_set_color(c_gray);
draw_rectangle(btn_x, btn_y, btn_x + btn_w, btn_y + btn_h, false);
draw_set_color(c_white);
draw_text(btn_x + 20, btn_y + 15, "[ESC] Voltar");
