scribble(damage == 0 ? missed_text : string(damage))
.blend(damage == 0 ? missed_color : damage_color, alpha)
.align(fa_center,fa_middle)
.transform(2,2,0)
.draw(x,y);