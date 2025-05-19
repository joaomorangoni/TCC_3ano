function scr_knockback_stun(argument0 , argument1){
	
	var dir = point_direction(argument1.x, argument1.y, argument0.x, argument0.y);
	
    var knockback_speed = 3;    

	argument0.velh = lengthdir_x(knockback_speed, dir);
    argument0.velv = lengthdir_y(knockback_speed, dir);
	
}