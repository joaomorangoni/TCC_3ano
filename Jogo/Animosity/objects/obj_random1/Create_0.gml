// Estrutura do diálogo sobre ansiedade
dialogue_tree = [
    {
        speaker: "",
        text: "Meu coração tá disparado... não consigo pensar direito... parece que vou perder o controle.",
        options: [
            {text: "Calma, respira comigo devagar. Vamos juntos.", next: 1},
            {text: "Você está seguro aqui, não vai acontecer nada de ruim.", next: 2},
            {text: "Quer conversar sobre o que está te deixando assim?", next: 3}
        ]
    },

    {
        speaker: "",
        text: "...Tá difícil... mas... ok...",
        options: [
            {text: "(Ajudar Luan a respirar – mini game de respiração)", next: 4}
        ]
    },

    {
        speaker: "",
        text: "Eu sei que parece irracional... mas minha cabeça insiste que algo vai dar errado.",
        options: [
            {text: "Tudo bem sentir isso, mas estou aqui com você. Não precisa enfrentar sozinho.", next: 5},
            {text: "Vamos tentar focar em algo à nossa volta, só por um momento.", next: 6}
        ]
    },

    {
        speaker: "",
        text: "Eu... tenho medo de falhar. Parece que, não importa o que eu faça, vou decepcionar todo mundo.",
        options: [
            {text: "Esse medo deve ser muito pesado. Quer que eu só te ouça agora?", next: 7},
            {text: "Você já percebeu que esse pensamento aparece muito? Talvez possamos pensar em formas de enfrentá-lo.", next: 8}
        ]
    },

    { speaker: "", text: "Eu me sinto... um pouco melhor. Obrigado por não me deixar sozinho nisso.", options: [] },
    { speaker: "", text: "É bom ouvir isso... às vezes sinto que ninguém entende.", options: [] },
    { speaker: "", text: "Ok... vamos tentar focar em algo concreto.", options: [] },
    { speaker: "", text: "Obrigado... só de você estar aqui, já ajuda.", options: [] },
    { speaker: "", text: "Sim... acho que isso vem sempre, mesmo sem motivo. Talvez eu precise entender melhor isso.", options: [] }
];

// Controle do diálogo
dialogue_active = false;
current_node = 0;
option_hover = -1;
