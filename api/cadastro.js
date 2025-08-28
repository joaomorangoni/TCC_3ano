const express = require('express');
const bodyParser = require('body-parser');

const app = express();
app.use(bodyParser.json());

// Simulando um "banco de dados" em memória
let usuarios = [];

// Rota de cadastro
app.post('/cadastro', (req, res) => {
    const { email, senha } = req.body;

    // Verifica se já existe usuário com este email
    const usuarioExistente = usuarios.find(u => u.email === email);
    if (usuarioExistente) {
        return res.status(400).json({ mensagem: 'Usuário já cadastrado!' });
    }

    // Adiciona usuário
    usuarios.push({ email, senha });
    return res.status(201).json({ mensagem: 'Cadastro realizado com sucesso!' });
});

// Inicia servidor
app.listen(3000, () => {
    console.log('Servidor de cadastro rodando em http://localhost:3000');
});

module.exports = usuarios;
