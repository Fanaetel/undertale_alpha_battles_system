function EncouterAciton (name,callback){
 return new ClassEncouterAction(name,callback);	
}

function ClassEncouterAction(name, callback) constructor{
 self.name = name ;
 self.callback = callback;
 
 static invoke = function (encouter) {
  callback(encouter);	 
  }
}