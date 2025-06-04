function scr_alerta()
{
		var _inimigo = argument0;
		var _player = argument1;
		var _alertt = 1000; //distância de alerta, era 200
		var dist = point_distance(_inimigo.x, _inimigo.y, _player.x, _player.y);
	
		if (dist <= _alertt && !_player._morreu) 
		 {
	        _inimigo.alerta = true; 
			_inimigo.estado = estado_inimigos.alerta;
			
	     }
		else
		{
			_inimigo.alerta = false;
			_inimigo.estado = estado_inimigos.livre;
		}
		
}
