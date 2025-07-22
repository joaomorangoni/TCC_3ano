var _player = instance_place(x, y, Player);
var play = instance_find(Player, 0);
var _Dano = instance_place(x, y, sword_1);
var _col = instance_place(x + velh, y - 2, obj_chao);

if (global.pause) {
	exit;
}
	//Causar dano no Player
	if (estado = estado_inimigos.livre || estado = estado_inimigos.alerta) {
		if (_player && !_player.iframe && !_player.dano)
			{
				if (!morto)
				{
				_player.attack = false;
				_player.dano = true;
				_player.vida -= dano_inimigo;
				_player.adr += _player.adr_dano;
				_player.adr = clamp(_player.adr, 0, _player.adr_max);
				}
			}
	}
	
if (_Dano && !morto && !dano)
{
	estado = estado_inimigos.dano;
	iframe = 20;
	dano = true;
	vida -= _Dano.dano;
	play.adr += _Dano.adr;
	play.adr = clamp(play.adr, 0, play.adr_max);
}

      if (vida <= 0)
		{
			estado = estado_inimigos.morto;
			
			if (!contado)
			{
				contado = true;
				if (variable_instance_exists(id, "from_room"))
				{
				    if (from_room != noone && instance_exists(from_room))
				    {
				        from_room.inimigos_restantes -= 1;
				    }
				}
			}

		}
		

