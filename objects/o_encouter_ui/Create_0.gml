depth = encouter_depth.ui;
_input = encouter._input;
arena  = encouter.arena;


_draw_text = function (){
var text_offset_x = 20;
var text_offset_y = 10;	

 draw_text(arena.x - arena.width / 2 + text_offset_x ,arena.y - arena.height / 3 + text_offset_y,$"{encouter.text}")
	
};

draw_buttons = function(){
var buttons_y = 450;
var buttons_x = 80;
var buttons_offset_x = 40;

var soul_offset_x = [ -40, -40, -40, -40];
var soul_offset_y = 0 ;
	
	var buttons= [
	spr_fight,
	spr_act,
	spr_item,
	spr_m, 
 ];
 var i = 0
 
repeat ( array_length (buttons)) {
  var draw_x = buttons_x + buttons_offset_x * i + 116 * i;	
  var draw_y = buttons_y;
	
 var selected = _input.selected_button == i && encouter.state == encouter_state.selecting;
		draw_sprite(buttons[i], selected, draw_x, draw_y);
  if (selected)
	draw_sprite(spr_soul,0,draw_x + soul_offset_x[i], draw_y + soul_offset_y);	
i++
}
}

draw_hud = function () {
 var player = encouter.player;	

 draw_text(40,385, player.name)
 draw_text(170,385, player.lv)
 
 draw_sprite(spr_encouter_bar_background,0,290,395);
 if (encouter.state == encouter_state.in_menu && encouter.selected_menu == encouter_menu.item){
	 var index = _input.selected_sub_menu;
	 var item  = player.items[index];
    draw_set_alpha(abs(sin(current_time / 500 )));
	draw_sprite_field(spr_encouter_bar_background,0,250, 350, min (player.hp + item.heal, player.MaxHp) / player.MaxHp); 
    draw_set_alpha(1)
}

draw_sprite_field(spr_encouter_bar_hp,0,290,383, player.hp / player.MaxHp);
 draw_text(400, 385, $"{player.hp} / {player.MaxHp}" )
}
draw_menu = function () {
 switch (encouter.selected_menu) {
  case encouter_menu.fight :	 
	 draw_menu_fight();
	 break;
  case encouter_menu.act :	 
	 draw_menu_act();
	 break;
  case encouter_menu.act_actions:
     draw_menu_actions();
     break;
  case encouter_menu.item :
     draw_menu_item();
     break;
  case encouter_menu.mercy :
     draw_menu_mercy();
	 break;
 }		
}
draw_menu_fight =  function () {
 var text_offset_x = 34;	
 var text_offset_y = 10;	
	 text = "";
	 
	array_foreach(encouter.enemies, function(enemy, i) {
	var bar_offset_x = 6;	
	var bar_offset_y = 4;	
	var bar_draw_x = arena.x - arena.width / 2 + bar_offset_x;	
	var bar_draw_y = arena.x - arena.height	/ 2 + bar_offset_y + 35 * i;
	var soul_offset_x = 22;	
	var soul_offset_y = 0;
	var name = enemy.name;
	
	draw_sprite(spr_encouter_bar_background,0,bar_draw_x + 200, bar_draw_y + 2);
	draw_sprite_field(spr_encouter_bar_heal,0, bar_draw_x + 200, bar_draw_y - 10, enemy.hp / enemy.hp_max);
	
	if (_input.selected_sub_menu == i){
	 draw_sprite(spr_soul,0,bar_draw_x + soul_offset_x, bar_draw_y + soul_offset_y);	
	 text += " ";
	}
	else text += "* ";	
	text += name + "\n";
});

draw_text(arena.x - arena.width / 2 + text_offset_x, arena.y - arena.height / 2 + text_offset_y, text)
}

draw_menu_actions = function (){
 var soul_sprite = spr_soul;	
 var index = _input.selected_sub_menu;
 var enemy = encouter.enemies[ _input.selected_enemy];
 var actions = enemy.actions;	
 var draw_x = arena.x - arena.width / 2 + 20;
 var draw_y = arena.y - arena.height / 2;
	var i = 0
   repeat (array_length(actions)) {
	var action = actions[i];  
	var render = ""; 
	
	var text_x = draw_x;  
	var text_y = draw_y;
	
	 render += i == index ?	" " :  "* ";
	
	if ((i + 1) % 2 == 0) 
	 text_x += 260;
	 
	 text_y += floor(i / 2) * 28;
	 render += action.name;
	 
	 i++ 

	 draw_text(text_x,text_y, render);
  }
  
 var soul_x = draw_x + 8 + (((index + 1 ) % 2 == 0) ? 260 : 0);
 var soul_y = draw_y + 34 + floor(index / 2) * 28;
 draw_sprite(soul_sprite,0,soul_x,soul_y);
}

draw_menu_act = function () {
	var text_offset_x = 4;
	var text_offset_y = 10;
	text = "";

	array_foreach(encouter.enemies, function(enemy, i) {
		var bar_offset_x = 16;
		var bar_offset_y = 34;
		var bar_draw_x = arena.x - arena.width / 2 + bar_offset_x;
		var bar_draw_y = arena.y - arena.height / 2 + bar_offset_y + 32 * i;
		var soul_offset_x = 12;
		var soul_offset_y = 0;
		var name = enemy.name;
		
	
		if (_input.selected_sub_menu == i) {
		draw_sprite(spr_soul,0,bar_draw_x + soul_offset_x, bar_draw_y + soul_offset_y);
	
		text += "   ";
		}
		else text += " *  ";
		text += name + "\n";
	});
	
		draw_text(arena.x - arena.width / 2 + text_offset_x, arena.y - arena.height / 2 + text_offset_y, text);

}

draw_menu_item = function () {
 var player = encouter.player;	
 var index = _input.selected_sub_menu;	
 var text = " ";	
	
 var i = 0;
 repeat  (array_length(player.items)) {
	 
 if (i != 0) 
	text += " ";
 
    text += index == i ? " " : "*";
 
    i++
}
	var index = _input.selected_sub_menu;
	var item  = player.items[index];
	draw_sprite(spr_soul,0,arena.x - arena.width / 2 + 28 + 32 * index, arena.y + arena.height / 2 - 40);


draw_text(arena.x - arena.width / 2 + 20, arena.y - arena.height / 2 + 10,$"* {item.name}\n*{item.heal} ОЗ\n{text}");
}

draw_menu_mercy = function () {
var soul_sprite = spr_soul;	
var render = " ";	
var actions = encouter.mercy_actions;	

  var i = 0
  repeat ( array_length(actions)) {	
  var action = actions[i];	
  var name = action.name;
 
  var draw_x = arena.x - arena.width / 2 + 24;
  var draw_y = arena.y - arena.height / 2 + 36 + 32 * i;
 
 if (_input.selected_sub_menu == i) {
   draw_sprite(soul_sprite,0,draw_x,draw_y);	 
	 render +="  ";
 }
 else render += "* ";
 render += name + "\n";
 i++

draw_text(arena.x - arena.width / 2 + 20, arena.y - arena.height / 2 + 10,render);
 }
};