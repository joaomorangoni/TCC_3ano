var _player = instance_place(x, y, Player);
var _Dano = instance_place(x, y, sword_1);
var play = instance_find(Player, 0);

if (global.pause) {
	exit;
}
	//Causar dano no Player AO ENCOSTAR
		if (_player && !_player.iframe && !_player.dano)
			{
				if (!morto)
				{
				_player.attack = false;
				_player.dano = true;
				_player.vida -= dano_leve;
				_player.adr += _player.adr_dano;
				_player.adr = clamp(_player.adr, 0, _player.adr_max);
				}
			}
		
		if (_Dano && !morto && !dano && image_alpha = 1)
		{
			vida -= _Dano.dano;
			dano = true;
			iframe = 30;
			play.adr += _Dano.adr;
			play.adr = clamp(play.adr, 0, play.adr_max);
		}

      if (vida <= 0)
		{
			morto = true;
			estado = estado_boss.morto;
		}
		
		if (dano)
		{
			if(iframe <= 0)
			{
				dano = false;
			}
			else
			{
				iframe -= 1;
			}
		}