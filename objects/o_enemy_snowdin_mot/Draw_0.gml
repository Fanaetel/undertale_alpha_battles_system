var wave_x = sin(current_time / 30 * pi / 60);
var wave_y = sin(current_time / 30 * pi / 30);

draw_sprite_pos(
	image_legs.sprite, 
	image_legs.subming,
	image_legs.x + wave_x,
	image_legs.y + wave_y,
	image_legs.x + wave_x + image_legs.width,
	image_legs.y + wave_y,
	image_legs.x + image_legs.width,
	image_legs.y + image_legs.height,
	image_legs.x,
	image_legs.y + image_legs.height,
	1
);
damage_offset_x = 40;
damage_offset_y = 0;