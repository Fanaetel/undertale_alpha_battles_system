draw_rectangle(29,211,607,383,true)
for (var i=0;i<array_length(menu_batte);i++){
	if (global.bame==false)
	 if(check==0)
	   if (i==num){
		draw_sprite(Soul,0,9+i*150,400);  		
		 draw_set_color(c_yellow);  		   
	   }
draw_set_color(c_white);   
draw_sprite(menu_batte[i],0,19+i*150,400);	
}
if (check==2){
switch(num){
case 0:	
 instance_create_layer(51,200,"Instances",oChoseMon);
 break;
}	
}
