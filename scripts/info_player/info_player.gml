
function Class_Player (Name,hp,MaxHp,lv,defense,damage,items) constructor {
 	 self.name    = Name;
	 self.hp      = hp;
	 self.MaxHp   = MaxHp;
	 self.lv      = lv;
	 self.defense = defense;
	 self.damage  = damage;
	 self.items   = items;
	     
		  static heal = function(amount) {
			hp = min(hp+abs(amount),MaxHp);  
		  };
		
		  static hurt= function(damage) {
			hp = max(hp-max(abs(damage) - defense, 1), 0); 
		  };
		  
		  static has_items=function() {
			return array_length(items) > 0;  
		  };
};