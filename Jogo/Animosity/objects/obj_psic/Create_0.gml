// ------------------------------
// Estrutura do diálogo
// ------------------------------
dialogue_tree = [
    {
        speaker: "",
        text: "Olá! Bem vindo de volta! Vejo que anda enfrentando desafios\n em sua jornada. É importante que mantenhamos o equilibrio. \nComo tem se sentido?",
        options: [
            {text: "Me sinto mais forte, mas o estresse continua.", next: 1},
            //{text: "Estou lutando para manter o equilibrio.", next: 2},
            {text: "Estou bem, mas algo não parece certo.", next: 2}
        ]
    },
    {
        speaker: "",
        text: "É bom saber que se mantem forte, mas estresse demais nunca diz algo bom\n quer dizer que algo não está sendo tratado corretamente, sabia que meditação\n reduz o estresse ao focar no presente?\n Não é sobre evitar o problema e sim como você lida com ele",
        options: [
            {text: "Vou tentar me concentrar mais no agora.", next: 5},
			{text: "Mas e quando parece incontrolável?", next: 4}
        ]
    },
    {
        speaker: "",
        text: "É aquela sensação novamente? A mente pode ser bem traiçoeira. Por isso analisar como se sente é importante, para perceber quando estamos no limite. Resiliencia não é algo que se nasce, porém é algo que da pra ir cultivando",
        options: [
            {text: "Estou percebendo que venho me criticado muito.", next: 3}
        ]
    },
    {
        speaker: "",
        text: "Ficar se criticando só vai piorar as coisas. A autocompaixão é um jeito de ser gentil consigo mesmo. Quando somos gentis com nós mesmos, principalmente quando a situação aperta, nossa resiliencia cresce e a ansiedade diminui. Ao invés de se cobrar tanto porque não pensa 'O que eu diria para um amigo se estivesse passando por isso?'.",
        options: []
    },
    {
        speaker: "",
        text: "Sabe, muitas vezes não controlamos o que sentimos e só aparece. Mas \nserá que é realmente assim? O que acontece dentro de nós tem muito haver \ncomo decidimos ver as coisas. Mudar a forma que enxergamos as coisas \npode mudar completamente o impacto dela em nossa vida.",
        options: []
    },
    {
        speaker: "",
        text: "Muito bem, se precisar, pode sempre falar comigo.",
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
