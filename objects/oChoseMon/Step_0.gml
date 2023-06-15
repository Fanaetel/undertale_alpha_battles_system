if input_pressed(WSAD.left) num+=1;
if input_pressed(WSAD.right) num-=1;
if input_pressed(WSAD.Z) 
switch (num){
 case 0:	
  instance_create_depth(40,200,-9,Object4);	
  instance_destroy(oChoseMon);
  break;
}