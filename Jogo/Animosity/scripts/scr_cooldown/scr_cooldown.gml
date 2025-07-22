function scr_cooldown(){
 // 
	if (cd_dash > 0)
	{
		cd_dash -= 1;
	}
	
// Iframe pós dano ----------------------------------------
	if (cd_inv > 0) 
	{
		cd_inv--;
		
		if (cd_inv mod 8 < 4) {
			image_alpha = 1; 
		} 
		else 
		{
			 image_alpha = 0.4;
		}
	}
	else
	{
		iframe = false;
	}
}