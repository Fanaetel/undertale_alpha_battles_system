var Z=keyboard_check_pressed(ord("Z"))||keyboard_check_pressed(vk_enter);
var A=keyboard_check_pressed(ord("A"))||keyboard_check_pressed(vk_left);
var D=keyboard_check_pressed(ord("D")) ||keyboard_check_pressed(vk_right);
if (A) num+=1;
if (D) num-=1;
if (Z) 
switch (num){
 case 0:	
  instance_create_depth(40,200,-9,Object4);	
  instance_destroy(oChoseMon);
  break;
}