draw_self()
for(var i=0;i<array_length(global.Monte);i++){	
if(Attackfake==1){	
global.Monte[i].hp-=Attack.Dmg;	
Attackfake=0;
}
draw_text(60,200,string(global.Monte[i].hp));
}