function draw_sprite_field(sprite, subming , x, y, field_x, field_y =1){
	draw_sprite_part(sprite, subming, 0 , 0, field_x * sprite_get_width (sprite),field_y * sprite_get_height(sprite), x, y)
}