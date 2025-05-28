event_inherited()
var _chao = place_meeting(x, y + 1, obj_chao)

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
		
				timer_decisao_andar = 180;
		
				// se bater na parede troca de direção
		
				if (place_meeting(x + velh, y, obj_chao)) 
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
		
	break;
	case(estado_inimigos.dano):
	
		if (sprite_index != rato_sofrendodano)
		    {
		        sprite_index = rato_sofrendodano;
		        image_index = 0;
		    }
		velh = 0;
		velv = 0;
	break;
	case(estado_inimigos.morto):
		sprite_index = rato_morto;
		
	break;
	
}