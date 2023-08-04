function Logger() constructor {
file = "log.txt"; 
static __log__ = function(msg) {
		msg = string(msg);
		var directory = working_directory + self.file;
		var file = file_text_open_append(directory);
		file_text_write_string(file, msg + "\n");
		file_text_close(file);
	}
	
	/// @param {String} msg
	/// @param {String} prefix
	/// @param {Array<Any>} args
	/// @param {Array<Real>} netlog_color
	static __base__ = function(msg, prefix, args, netlog_color = [255, 255, 255]) {
		msg = string(msg);
		var format = msg;
		var i = 0		
		 repeat (array_length(args))  {
			format = string_replace_all(format, "{" + string(i) + "}", string(args[i]));
			i++
		}
		
		var date = "[" + date_datetime_string(date_current_datetime()) + "]";
		var netlog_format = date + " " + format;
		format = date + "[" + prefix + "] " + format;
		show_debug_message(format);
		__log__(format);
		return format;
	}

	/// @param {string} msg
	/// @param {Any} args
	static show = function(msg) {
		msg = string(msg);
		var args = []; for (var i = 1; i < argument_count; i++) array_push(args, string(argument[i]));
		show_debug_message(msg);
	}
	
	/// @param {string} msg
	/// @param {Any} args
	static info = function(msg) {
		msg = string(msg);
		var args = []; for (var i = 1; i < argument_count; i++) array_push(args, string(argument[i]));
		__base__(msg, "Info", args, [0, 255, 0]);
	}
	
	/// @param {string} msg
	/// @param {Any} args
	static alert = function(msg) {
		msg = string(msg);
		var args = []; for (var i = 1; i < argument_count; i++) array_push(args, string(argument[i]));
		__base__(msg, "Alert", args, [255, 211, 0]);
	}
		
	/// @param {string} msg
	/// @param {Any} args
	static warning = function(msg) {
		msg = string(msg);
		var args = []; for (var i = 1; i < argument_count; i++) array_push(args, string(argument[i]));
		__base__(msg, "Warning", args, [255, 100, 0]);
	}
	

	/// @param {string} msg
	/// @param {Any} args
	static error = function(msg) {
		msg = string(msg);
		var args = []; for (var i = 1; i < argument_count; i++) array_push(args, string(argument[i]));
		__base__(msg, "Error", args, [255, 0, 0]);
	}
	
	
	/// @param {string} msg
	/// @param {Any} args
	static fatal = function(msg) {
		msg = string(msg);
		var args = []; for (var i = 1; i < argument_count; i++) array_push(args, string(argument[i]));
	throw (string("\n{0}", __base__(msg, "Ftatal", args, [255, 0, 0])));
	}
	
	/// @desc Clears the log files.
	static clear = function() {
		file_delete(game_save_id + file);
		info("Cleared");
	}
	
	static open = function() {
		url_open("file:\\\\" + game_save_id + file);
	}
}

/// @return {Strcut.Logger}
global.__logger = new Logger();
#macro logger global.__logger