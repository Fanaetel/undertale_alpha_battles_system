var Spd=1.5;
var Hmv=(input_held(WSAD.down)-input_held(WSAD.up))*Spd;
var Vmv=(input_held(WSAD.right)-input_held(WSAD.left))*Spd;
x+=Vmv;
y+=Hmv;
var col=rectangle_in_rectangle(29,211,577,354,other.x-15.4,other.y-15.4,other.x-15.4,other.y-15.4)
if (!col){	
x-=Vmv;
y-=Hmv;
};