
if(sec > 0)
{
	if(timer <= 0)
	{
		sec--
		timer = 60;
	}
}
if (!global.pause)
{
	timer--
}