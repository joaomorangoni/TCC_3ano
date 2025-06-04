var _player = instance_place(x, y, Player);
var _Dano = instance_place(x, y, hitbox_atkleve1);
var play = instance_find(Player, 0);
var _col = instance_place(x + velh, y - 2, obj_chao);

if (global.pause) {
	exit;
}
	//Causar dano no Player
	if (estado = estado_inimigos.livre || estado = estado_inimigos.alerta) {
		if (_player && _player.inv_timer <= 0 && !_player.ataque && !_player.dashp)
			{
				_player.vida -= dano_inimigo;
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
	}

		if (_Dano && !morto && !dano)
		{
			estado = estado_inimigos.dano;
			dano = true;
			vida_inimigo -= _Dano.Dano;
			play.adr += _Dano.adrgot;
			play.adr = clamp(play.adr, 0, play.adr_max);
		}

      if (vida_inimigo <= 0)
		{
			estado = estado_inimigos.morto;
		}
		

