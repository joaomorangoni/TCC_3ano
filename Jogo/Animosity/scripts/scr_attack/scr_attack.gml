function scr_attack(){
	
	hbx = argument0;
	
	
	if (velh == 0 && image_index > 0) 
		{
			instance_create_layer(x , y, "Ataques", hbx);
		}
		
	if (velh != 0 && image_index > 2) 
		{
			instance_create_layer(x , y , "Ataques", hbx);
		}
	
	if(instance_exists(hbx))
	{
		hbx.image_xscale = image_xscale;
	}
	
}