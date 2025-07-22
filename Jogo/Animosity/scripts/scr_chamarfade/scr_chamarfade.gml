function scr_chamarfade(){
	if (!instance_exists(obj_fadeout))
	{
		instance_create_layer(x, y, "Fade", obj_fadeout);
	}
}