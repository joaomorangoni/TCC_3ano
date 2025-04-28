function criar_hitbox(){
	
	entidade = argument0;
	
	if (!instance_exists(hitbox_atkleve1) && entidade.image_index > 0) 
		{
			instance_create_layer(entidade.x + 28 * image_xscale, entidade.y - 5, "Colisores", hitbox_atkleve1);
		}
}