event_inherited()

if (global.pause) {
	image_speed = 0;
	exit;
}
else
{ 
	image_speed = 1;
}

scr_alerta(self, Player);

switch(estado) {
	
	case(estado_inimigos.livre):
		
		if(!alerta) {
			
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
			
			
		}
		if(velh != 0) {
			sprite_index = andou;
			image_xscale = sign(velh);
		}
		else {
			sprite_index = parou;
		}
}