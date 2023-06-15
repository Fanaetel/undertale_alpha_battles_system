#macro array_empty []
#macro struct_empty {}
enum devicse {
 	keyboard,	
}
enum WSAD{
 	left,
	right,
	up,
	down,
	Z,
	X,
}
global.devices=struct_empty;
global.inputs=struct_empty;
device_register(new Device_keyboard());

input_bind(WSAD.left,[
new Key(devicse.keyboard,vk_left),
new Key (devicse.keyboard,"A")
]);
input_bind(WSAD.right,[
new Key(devicse.keyboard,vk_right),
new Key(devicse.keyboard,"D")
]);
input_bind(WSAD.up,[
new Key(devicse.keyboard,vk_up),
new Key(devicse.keyboard,"W")
]);
input_bind(WSAD.down,[
new Key(devicse.keyboard,vk_down),	  
new Key(devicse.keyboard,"S")	  
]);
input_bind(WSAD.Z,[
new Key(devicse.keyboard,vk_enter),
new Key(devicse.keyboard,"Z")
]);
input_bind(WSAD.X,[
new Key(devicse.keyboard,vk_end),	
new Key(devicse.keyboard,"X")	
]);