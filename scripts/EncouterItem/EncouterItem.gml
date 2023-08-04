function EncouterItem(name, heal) constructor {
	
	self.name = name;

	self.heal = heal;

	index = generate_unique_id();

	use = function (encouter){
	 var player = encouter.player;	
	 var items = player.items;	
 
	array_delete(items, array_find_index(items,function(e){
		return e.index == index  
  }),1);
  player.heal(heal);
  
	encouter.set_dialogue([
		"* Вы съели " + name,
		" Вам стало хорошо "
		]);	  
	}
}