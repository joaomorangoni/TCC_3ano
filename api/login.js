const express = require('express');
const bodyParser = require('body-parser');

// Importa os usuários cadastrados do cadastro.js
let usuarios = require('./cadastro');

const app = express();
app.use(bodyParser.json());

// Rota de login
app.post('/login', (req, res) => {
    const { email, senha } = req.body;

    // Verifica usuário
    const usuario = usuarios.find(u => u.email === email && u.senha === senha);
    if (!usuario) {
        return res.status(401).json({ mensagem: 'Credenciais inválidas!' });
    }

    return res.status(200).json({ mensagem: 'Login realizado com sucesso!' });
});

// Inicia servidor
app.listen(4000, () => {
    console.log('Servidor de login rodando em http://localhost:4000');
});
