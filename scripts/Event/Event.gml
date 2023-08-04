///@desc Fabricator for create Events.
///@return {Struct.ClassEvent} New event instance.

function Event(){
 return new ClassEvent();
}

///@desc Base class for create Events.
function ClassEvent() constructor {
	listeners = [];
 ///@param {Function} callback - A Subscriber called by the invoke(), method can be unsubscribed with disconnec().	
	static connect = function(callback){
	array_push(listeners,callback)	
		return callback;
	};
 ///@desc Returns : Operation report, erased - true, in other cases - false.	
 ///@param {Function} callback - Subscriber you want to unsubscribe.
 
 static disconnect = function(callback) {
	 var i = 0
   repeat (array_length(listeners)) { 
       var element = listeners[i];
	   i++
	   return (callback == element) ? array_delete(listeners, i, 1) : false  	 	  
		}
}
///@desc Calls all subscribers with the specified arguments packer array.
///@param {Any} ... - Arguments for callback.
static invoke = function() {
	var array_arguments = [];
	var i = 0
	repeat (argument_count) {
		array_push(array_arguments, argument[i])
		i++
	}
	
	var i = 0
	repeat (array_length(listeners)) {
	 var listener_method = listeners[i];	
	 i++
	 try {
			listener_method(array_arguments);
		} catch(_error) {
			logger.fatal("Event: Listener method call error: {0}.", _error.message);
		}
  }
  
}
}