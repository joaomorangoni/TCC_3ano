var _player = instance_place(x, y, Player);
var _Dano = instance_place(x, y, hitbox_atkleve1);

if (_player && _player.inv_timer <= 0 && _player.ataque == false)
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

if (_Dano && !morto && !dano)
{
	if (_Dano.x < x)
	{
	    vel_knockback = 4; 
	}
	else
	{
	    vel_knockback = -4;
	}
	
	dano = true;
	vida_inimigo -= _Dano.Dano;
}

if (vida_inimigo <= 0)
{
	estado = estado_inimigos.morto;
}
	

