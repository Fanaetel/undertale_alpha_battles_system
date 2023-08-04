player = new Class_Player("???",30,30,1,20,40,[]); 

_input = instance_create(o_encouter_input,{ encouter : id});
arena = instance_create_depth(320,299,0,o_encouter_arena);
ui = instance_create(o_encouter_ui,{ encouter : id});
fight = noone;

enemies = [];
enemies_list = [];
create_enemies = function () {
	var i = 0
	repeat (array_length(enemies_list)) {
		enemies[i] = enemies_list[i].create(id);
		i++
	}
} 
 enemy_hurt = function (enemy_id, damage){
 enemies[enemy_id].hurt(damage)	 
 }
 on_attack_end = function() {
	set_state(encouter_state.enemy_dialogue);
	enemies[0].create_dialogue_bubble();
	arena.set_size_dialogue();
	fight = instance_create_depth(0, 0, 0, o_encouter_fight, {
		encouter : id
	});
}
mercy_actions = [
	EncouterAciton("Mercy", function(encouter){
	 array_foreach(enemies,function(enemy){
	  enemy.on_mercy();	})			
	})
	];
state = encouter_state.selecting;
set_state = function(index) {
	state = index;
}

set_dialogue = function (dialogue){
  instance_create_depth(0,0,0,o_encouter_dialogue,{
	encouter : id,
	dialogue : dialogue,
	state    :  state
  });	
	 set_state(encouter_state.encouter_dialogue);
}


text = "Это альфа версия, Так, что, что ? ";

on_use_item = function (item){
	arena.set_size_base();
	set_state(encouter_state.selecting);	
}

on_fight = function (){
}

on_fight_end = function () {
 set_state(encouter_state.selecting);	
 arena.set_size_base();	
 fight = noone ;	
}
on_acting = function(act_index){
	
}
selected_menu = encouter_menu.no
select_menu = function (index) {
	selected_menu = index;
	set_state(index == encouter_menu.no ? encouter_state.selecting : encouter_state.in_menu);
};
on_dialogue_end = function(state){
 set_state(state);	
};

on_enemy_dialogue_end = function(state) {
	enemies[0].on_dialogue_end();
	start_fight();
}

start_fight = function () {
 set_state (encouter_state.fight);	
 fight.start();	
 instance_create_depth(0, 0, 0, o_first_encouter_fight,{
 fight : fight, 	 
 });	
}
