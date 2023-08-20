event_inherited();
name = "Мот";
hp = 20;
hp_max = 200;
image_legs = Image(Sprite17,0,x,y)

dialogue_bubble_scale_x = 3.1;
dialogue_bubble_scale_y = 3;
dialogue_bubble_offset_x = 60;
dialogue_bubble_offset_y = -40;
dialogue_index = 0;

damage_offset_x = 40;
damage_offset_y = 0;

actions = [
 EncouterAciton("Проверить",function(encouter){
	 encouter.set_dialogue([
	 " Мот - 20 Атк 1 зщт/n "
	 ]);
 }),
 EncouterAciton("авы",function (encouter){
 var dialogue = [] ; 
	dialogue = ["* Вы рассказали анекдот."]; 
	 encouter.set_dialogue(dialogue)
 })
];
on_dialogue_end = function () {
 dialogue_index ++;	
 switch (dialogue_index){
 case 1 :	 
	 current_dialogue = [
	 " Я вы вобы ",
     "ВЫ [c_red]тупу ",	 
  ];
  break;
 }

 }
 current_dialogue = [
   "Ты урок ",
];
