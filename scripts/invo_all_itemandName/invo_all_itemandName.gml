function Name_Monten (_Name,_hp,_MaxHp) constructor{
 	Name=_Name;
	hp=_hp;
	MaxHp=_MaxHp;
}
function Attack_item (_Att) constructor{
	Att=_Att;
}

global.NameMonten=
{	
one_Monte : new Name_Monten("Мотьыв",200,40)	
};
global.Item={	
Attack : new Attack_item(20)
}
draw_set_font(Font1);