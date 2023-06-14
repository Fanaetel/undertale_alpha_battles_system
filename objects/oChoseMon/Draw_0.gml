draw_set_color(c_white);
for (var i=0;i<array_length(name);i++){
	draw_set_color(c_white);
	 if (i==num){
	 draw_set_color(c_yellow)	 
	 draw_sprite(Soul,0,5+i*10,200);	 
	 }	
draw_text(130,200,string(name[i].Name))	
}