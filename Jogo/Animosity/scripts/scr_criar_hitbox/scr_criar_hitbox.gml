function criar_hitbox(){
	
	entidade = argument0;
	hbx = argument1;
	
	if (!instance_exists(hbx) && entidade.velh == 0 && entidade.image_index > 0) 
		{
			instance_create_layer(entidade.x + 20 * image_xscale, entidade.y - 5, "Colisores", hbx);
		}
		
	if (!instance_exists(hbx) && entidade.velh != 0 && entidade.image_index > 2) 
		{
			instance_create_layer(entidade.x + 24 * image_xscale, entidade.y , "Colisores", hbx);
		}
}