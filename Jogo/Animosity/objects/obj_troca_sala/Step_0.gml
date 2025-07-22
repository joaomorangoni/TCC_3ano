var _player = instance_place(x, y, Player);

if (_player) 
{
	switch(dir) {
		case 0:
			_player.velh = -_player.vel;
		    
		break;
		case 1: 
			_player.velh = -_player.vel;
			
		break;
		case 2:
		
		break;
	}
}