///@paran {Real} damage - The base damage the player inflicts on the opponent depends on the opponent's defense and the location of the hit on the attack menu.
///@paran {Настоящий} Урон - базовый Урон игрока, наносит противнику зависит, от защиты противника и места попадания в меню атаки.
///@paran {Array<Struct.ClassEncouterItem>} item - Items available to the player to use.
///@paran {Массив<Структура.КлассПредмент>} Предмет - Предметы доступный для использовать Игрока.
function Class_Player (Name,hp,MaxHp,lv,defense,damage,items) constructor{
 	 self.name    = Name;
	 self.hp      = hp;
	 self.MaxHp   = MaxHp;
	 self.lv      = lv;
	 self.defense = defense;
	 self.damage  = damage;
	 self.items   = items;
	      ///@desc  A method to treat a player, increasing the player's life, changing health directly is highly discouraged.
          ///@desc  Метод лечения игрока, увеличения жизни игрока, изменения здоровья напрямую крайне не рекомендуется.
		  ///@param {Real} amount - Number of lives,raplenished by the player.
		  ///@param {Настоящий} сумма - Количество жизней, пополняемых игроком.
		  static heal = function(amount) {
			hp = min(hp+abs(amount),MaxHp);  
		  };
		  ///@desc A method for dealing direct damage to the player, changing health directly is highly discouraged.
		  ///@desc Метод нанесения прямого урона игроку, непосредственное изменение здоровья крайне не рекомендуется.
		  ///@param {Real} damage - The base damage that will be dealt to the player depends on the player's defense.
		  ///@param {Настоящий} урон — базовый урон, который будет нанесен игроку, зависит от защиты игрока.
		  static hurt= function(damage) {
			hp = max(hp-max(abs(damage) - defense, 1), 0); 
		  };
		  
		  static has_items=function() {
			return array_length(items) > 0;  
		  };
};

scribble_font_set_default("Font1")