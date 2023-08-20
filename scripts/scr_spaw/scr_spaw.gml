function ScrSpaw(x, y, object, num = 0, distance_y = 0, distance_x = 0)	{	
	
	var	i	=	0;
	repeat(num) {		
	var _distance_x = x + i * distance_x
	var _distance_y = y + i * distance_y
	instance_create_depth(_distance_x, _distance_y, encouter_depth.attack, object);     
	i++;
	 };

};

function SpawGasterBlaster(gaster_blaster, x_gb, y_gb, xd, yd, ad) {
	var inst_gaster_blaster = instance_create_depth(x_gb, y_gb, encouter_depth.attack, gaster_blaster);
	
	inst_gaster_blaster.x_dir = xd;
	inst_gaster_blaster.y_dir = yd;
	inst_gaster_blaster.image_angle = ad;
	
	
	return inst_gaster_blaster;
}

function SpawGasterblasterBorder  (border) {
		var pos = irandom_range(0, 2)
		var _border = border
		var border_dist = 180 
		switch (pos) {
				case 0:
					SpawGasterBlaster(o_gasterblaster, _border.x + border_dist, _border.y + 35, _border.x, _border.y + 30,  270);
					break;			
				case 1:
					SpawGasterBlaster(o_gasterblaster, _border.x + border_dist, _border.y + 5, _border.x, _border.y,  270);
					break;		
				case 2:
					SpawGasterBlaster(o_gasterblaster, _border.x + border_dist, _border.y - 25, _border.x, _border.y - 30,  270);
					break;
		}
}

function SpawnCircleAround(obj, _x, _y, num, radius) {
	var _angle, _lengthdir_y, _lengthdir_x
	
	var i = 0
	
	repeat (num)	{
	
 	_cos =  i * radius * cos(60) 
	_sin =  i * radius * sin(60) 
	 
	_angle = point_distance(0, 0, _cos, _sin)
	_lengthdir_x = lengthdir_x(radius, _angle)
	_lengthdir_y = lengthdir_y(radius, _angle)
	
	 instance_create_depth(_x  + _lengthdir_x, _y + _lengthdir_y, encouter_depth.attack, obj);

	i++ 
	
	}

}
