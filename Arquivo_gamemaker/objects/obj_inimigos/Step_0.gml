var _player = instance_place(x, y, Player);

if (_player && _player.inv_timer <= 0)
	{
		_player.vida -= dano_inimigo;
		_player.timer_dano = _player.tempo_dano;
		_player.inv_timer = _player.inv_tempo;
		
		if (morto == false)
		{
		_player.dano = true;
		_player.velh = 0;
		_player.velv = 0;
		}
	}
