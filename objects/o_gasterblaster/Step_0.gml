time++;

if (time <= fly_time) {
	x = lerp(x, x_dir, 0.1);
	y = lerp(y, y_dir, 0.1);
	 	
}


if (time <= charge_time) 
	image_angle = lerp(image_angle, point_direction(x, y, x_dir, y_dir) + 90, 0.2);


if (time == charge_time) {
	sprite_index = shot_spr;
	blast = instance_create_depth(x, y, encouter_depth.attack, obj_blast);
	blast._angle = image_angle - 90;
	if (!is_shaked) 
		is_shaked = true
	 
}

if (time > charge_time) {
	x = lerp(x, x_start, 0.1);
	y = lerp(y, y_start, 0.1);
	if (instance_exists(blast)) {
		blast.x = x;
		blast.y = y;
			
	}
	image_alpha -= 0.05;
}

if (image_alpha <= 0){
	instance_destroy();

}
	
	

