var A=keyboard_check(ord("A"))|| keyboard_check(vk_left);
var D=keyboard_check(ord("D"))|| keyboard_check(vk_right);
var W=keyboard_check(ord("W"))|| keyboard_check(vk_up);
var S=keyboard_check(ord("S"))|| keyboard_check(vk_down);
var Spd=1.5;
var Hmv=(S-W)*Spd;
var Vmv=(D-A)*Spd;
x+=Vmv;
y+=Hmv;
var col=rectangle_in_rectangle(29,211,577,354,other.x-15.4,other.y-15.4,other.x-15.4,other.y-15.4)
if (!col){	
x-=Vmv;
y-=Hmv;
};