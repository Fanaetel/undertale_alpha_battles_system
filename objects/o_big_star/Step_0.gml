image_angle += 2;

var spaw = function () {
var _angle, _lengthdir_y, _lengthdir_x, radius, inst_gaster_blaster, num
	
	var i = 0
	 num = 0
	
	repeat (8){

	 radius = 25 
	
 	_cos =  i * radius / cos(45) 
	_sin =  i * radius / sin(45) 
	 
	_angle = point_distance(0, 0, _cos, _sin)
	_lengthdir_x = lengthdir_x(radius, _angle)
	_lengthdir_y = lengthdir_y(radius, _angle)
	
	 instance_create_depth(x + _lengthdir_x, y + _lengthdir_y, encouter_depth.attack, o_star);

	i++ 
	
	}
}
if (place_meeting(x, y, o_arean_collision)) {
	spaw()
	instance_destroy()
}
x += _speed.x
y += _speed.y
