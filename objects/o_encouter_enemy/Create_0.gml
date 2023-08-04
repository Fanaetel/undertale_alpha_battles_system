depth = encouter_depth.enemy;

if (!variable_instance_exists(id,"encouter")){
logger.fatal("Failed to get the encouter reference, check if the enemy \"{0}\" in encouter was created correctly.", object_get_name(object_index))
 encouter = noone;
}

name = "Enemy";

current_dialogue = [];

hp = 100;
hp_max = 100;

attack = 1;
defense = 12; 

can_check = false;
can_spare = false;

dialogue_bubble = noone;
dialogue_bubble_sprite = spr_encouter_dialogue;
dialogue_bubble_scale_x = 1;
dialogue_bubble_scale_y = 1;
dialogue_bubble_offset_x = 0;
dialogue_bubble_offset_y = 0;

create_dialogue_bubble = function () {
 dialogue_bubble = instance_create_depth(x + dialogue_bubble_offset_x, y + dialogue_bubble_offset_y, -999, o_encouter_dialogue_bubble,{
	dialogue : current_dialogue,
	enemy : id,
	image_xscale : dialogue_bubble_scale_x,
	image_yscale : dialogue_bubble_scale_y,
 });
}

actions = [];
damage_offset_x = 0;
damage_offset_y = 0;

hurt = function (damage){
 var _damage = max(damage - defense,0);	
 
 hp = max(hp - _damage, 0);
 
 instance_create_depth(x + damage_offset_x, y + damage_offset_y, depth -1,o_encouter_attack_damage,{
 damage : _damage	 
 });	
};

kill = function () {

}

on_mercy = function() {

}
