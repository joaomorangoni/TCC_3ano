var _chao = place_meeting(x, y + 1, chao)

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