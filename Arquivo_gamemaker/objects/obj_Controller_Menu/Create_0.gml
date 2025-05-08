// Variáveis do menu
option = 0; // A opção selecionada
option_count = 12; // Total de opções no menu

controle_nome = ["Left", "Right", "Down", "Jump", "Interact", "Dash", "Basic Attack" , "Heavy Attack" , "Hab 1" , "Hab 2", "Special"];
controle_chave = [ord("A"), ord("D"), ord("S"), vk_space, ord("X"), vk_shift, ord("K"), ord("L"), ord("Q"), ord("E"), ord("Z")];
controle_editando = -1; // -1 significa que não está editando nenhum

controle_total = array_length(controle_nome);