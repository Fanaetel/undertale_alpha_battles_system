 i = 0
spaw  = function () {
	var  num = 0
	
	repeat (1){
var	radius = 380
	
 	_cos =  i * radius * cos(60)  
 	_sin =  i * radius * sin(60) 
	 
var	_angle = point_distance(0, 0, _cos, _sin)
var	_lengthdir_x = lengthdir_x(radius, _angle)
var	_lengthdir_y = lengthdir_y(radius, _angle)
	
var	inst_gaster_blaster = instance_create_depth(350 + _lengthdir_x, 200 + _lengthdir_y, encouter_depth.attack, o_gasterblaster);
	
	inst_gaster_blaster.x_dir = x
	inst_gaster_blaster.y_dir = y
	
	inst_gaster_blaster.charge_time += num 
	num += 10
	i++ 
	
	}
}

time = 0 
	
	
	