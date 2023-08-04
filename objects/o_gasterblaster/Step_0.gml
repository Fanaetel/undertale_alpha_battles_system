time++

if (time <= fly_time) {
	x = lerp (x, x_dir, 0.1);	
	y = lerp (y, y_dir, 0.1);
};



if (time == charge_time) {
	sprite_index = shot_spr;
	blast	= instance_create_depth(x, y, encouter_depth.attack, obj_blast)
	blast.angle = image_angle - 90;
	is_shaked = is_shaked == false ?  true : false ;
	
}

if (time > charge_time) {
	x = lerp(x, x_start, 0.1); 	
	y = lerp(y, y_start, 0.1);
	if (instance_exists(blast)) {
		blast.x = x;	
		blast.y = y;
	}
	image_angle -= 0.05;
}

