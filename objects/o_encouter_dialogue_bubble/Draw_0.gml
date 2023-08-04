draw_self();
scribble(dialogue[dialogue_index])
.blend(c_black,1)
.wrap(image_xscale * 56 - 26)
.line_height(16,14)
.draw(x + sprite_edge_left + 50, y + sprite_edge_top + 14, typist );