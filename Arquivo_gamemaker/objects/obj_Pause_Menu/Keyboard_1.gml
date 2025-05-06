
if (keyboard_check_pressed(vk_up)) {
    option = (option - 1 + option_count) % option_count; // Aumenta o índice de opção para cima
}

if (keyboard_check_pressed(vk_down)) {
    option = (option + 1) % option_count; // Diminui o índice de opção para baixo
}

// Ação ao selecionar a opção
if (keyboard_check_pressed(vk_enter)) {
    switch(option) {
        case 0: // Retomar
			global.pause = false;
            exit; // Fecha o menu de pausa
            break;
        case 1: // Conquistas
            // Chame a tela de conquistas aqui
            break;
        case 2: // Opções
            // Chame a tela de opções aqui
            break;
        case 3: // Sair
            // Ação de sair, como voltar ao menu principal ou fechar o jogo
            game_end(); // Finaliza o jogo
            break;
    }
}