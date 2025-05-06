event_inherited()
var _chao = place_meeting(x, y + 1, chao)

if (global.pause) {
	image_speed = 0;
	exit;
}
else
{ 
	image_speed = 1;
}

switch(estado) {
	case(estado_inimigos.livre):
		if (_chao) {
	
			//rodar o tempo de decisão
			timer_decisao_andar -= 1;
	
			// Decisão
	
			if (timer_decisao_andar <= 0)
			{
				andar = choose(true, false);
		
				// Escolher a direção
				if(andar)
				{
			
					velh = choose(vel, -vel);
		
				}
				else
				{
					velh = 0;
				}
				// Resetar o timer
		
				timer_decisao_andar = room_speed * 3;
		
				// se bater na parede troca de direção
		
				if (place_meeting(x + velh, y, chao)) 
				{
					velh *= -1;
				}
		
			}
	
			// Animação
	
			if (velh != 0)
			{
				sprite_index = rato_andando;
				image_xscale = sign(velh);
			}
			else
			{
				sprite_index = rato_parado;
			}
	
		}
		else
		{
			// Gravidade
		  if (velv > 0)
		  {
			sprite_index = rato_caindo;
		  }

			velv += grav;
	
			velh = 0;
		}
		
		if (dano)
		{
			estado = estado_inimigos.dano;
		}
	break;
	case(estado_inimigos.dano):
	
		if (sprite_index != rato_sofrendodano)
		    {
		        sprite_index = rato_sofrendodano;
		        image_index = 0;
		    }
	// knockback
		 x += vel_knockback;
		vel_knockback *= 0.9;
		
		if (abs(vel_knockback) < 0.5)
		 {
	        vel_knockback = 0;
	        dano = false;
	        estado = estado_inimigos.livre;
		 }
	break;
	case(estado_inimigos.morto):
		sprite_index = rato_morto;
		
	break;
	
}