function scr_alerta()
{
		var _inimigo = argument0;
		var _player = argument1;
		var _alertt = 200; //distância de alerta
		var dist = point_distance(_inimigo.x, _inimigo.y, _player.x, _player.y);
	
		if (dist <= _alertt) 
		 {
	        _inimigo.alerta = true; 
			
	     }
		else
		{
			_inimigo.alerta = false;
		}
	
		show_debug_message(_inimigo.alerta);
}
