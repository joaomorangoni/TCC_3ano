// ------------------------------
// Estrutura do diálogo
// ------------------------------
dialogue_tree = [
    {
        speaker: "",
        text: "Sabia que companhia de pets pode aliviar sintomas de ansiedade e outros transtornos",
        options: []
    }
];

// ------------------------------
// Controle do diálogo
// ------------------------------
dialogue_active = false;
current_node = 0;
option_hover = -1;

// Margens e largura da caixa de diálogo
margin = 40;
