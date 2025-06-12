var _player = instance_place(x, y, Player);
var _Dano = instance_place(x, y, hitbox_atkleve1);
var play = instance_find(Player, 0);

if (global.pause) {
	exit;
}
	//Causar dano no Player AO ENCOSTAR
		if (_player && _player.inv_timer <= 0 && !_player.ataque && !_player.dashp)
			{
				_player.vida -= dano_leve;
				_player.timer_dano = _player.tempo_dano;
				_player.inv_timer = _player.inv_tempo;
		
				if (!morto)
				{
				_player.dano = true;
				_player.velh = 0;
				_player.velv = 0;
				_player.adr += _player.adr_dano;
				_player.adr = clamp(_player.adr, 0, _player.adr_max);
				}
		}