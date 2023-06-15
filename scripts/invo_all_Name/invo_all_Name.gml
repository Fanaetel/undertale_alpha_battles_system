function Name_Monten (_Name,_hp,_MaxHp) constructor{
 	Name=_Name;
	hp=_hp;
	MaxHp=_MaxHp;
};
enum Soul_Hp{
 SoHp=30,
 SoMaxHp=30,		
};
enum Attack{
 Dmg=20,		
};
draw_set_font(Font1);
global.Monte=array_create(0);
global.NameMonten=
{	
one_Monte : new Name_Monten("Мот",200,200)	
};
array_push(global.Monte,global.NameMonten.one_Monte);
function  DM(HP,DMG=Attack.Dmg){
	static SO=HP
	SO-=DMG;
	draw_text(100,90,string(SO))
	return SO; 
};