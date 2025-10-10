show_debug_message("Player pos: x = " + string(x) + ", y = " + string(y));

if (control) {

var player = instance_find(Player, 0);

if (instance_exists(player)) 
{
	  player.x = 1500;
	  player.y = 1130;
}
	
room_goto(Sala_Neutra_v1)}