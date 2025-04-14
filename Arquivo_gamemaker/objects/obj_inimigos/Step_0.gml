// Verifica colisão com o player
var _player = instance_place(x, y, Player);

if (_player != noone && _player.inv_timer <= 0) {
    _player.vida -= dano_inimigo; // cada inimigo com seu dano

    _player.dano = true;

    _player.ataque = false;

    var empurrao = 4;
    _player.velh = sign(_player.x - x) * empurrao;
}