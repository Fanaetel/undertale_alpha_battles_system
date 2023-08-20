var color = damage == 0 ? missed_color : damage_color
draw_set_halign(fa_center)
draw_set_color(color)
draw_text(x, y,  damage == 0 ? missed_text : string(damage))
draw_text(x, y, damage == 0 ? missed_text : string(damage));
draw_set_halign(fa_middle)
draw_reset()