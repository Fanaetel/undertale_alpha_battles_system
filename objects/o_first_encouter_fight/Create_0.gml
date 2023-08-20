if (!variable_instance_exists(id,"fight"))
  fight = noone;
 
arena = fight.arena;
 
time  = 0;
index = 0;


destroy = function () {
  fight.destroy ();	
  instance_destroy ();	
}
