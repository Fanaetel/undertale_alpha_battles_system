function ScrSpaw(x, y, object, num = 0, distance_y = 0, distance_x = 0)	{	
	
	var	i	=	0;
	repeat(num) {		
	instance_create_depth(x + i * distance_x, y + i * distance_y, encouter_depth.attack, object);     
	i++;
	 };

};

function ScrSpawCircle (x, y, object, num = 0 ) {
	var radius = 100;
	var angle = 45
	var __cos = x + radius * cos(angle);
	var __sin = y + radius * sin(angle);
	
		instance_create_depth( __cos , __sin , encouter_depth.attack, object, {image_angle : angle });	

}