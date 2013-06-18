// Generated by CoffeeScript 1.4.0
var callback, coffee, exec, notify;

exec = require('child_process').exec;

coffee = require('coffee-script');

callback = function(error, stdout, stderr) {
  if (!!stdout) {
    console.log("stdout: " + stdout);
  }
  if (!!stderr) {
    console.log("stderr: " + stderr);
  }
  if (error != null) {
    return console.log("exec error: " + error);
  }
};

notify = function(message, type) {
  return exec("growlnotify -m '" + message + "' --image '" + __dirname + "/i/coffee-" + type + ".png'", callback);
};

coffee.on('failure', function(error, task) {
  return notify(error, 'error');
});

coffee.on('success', function(task) {
  return notify("" + task.file + " successfully compiled", 'success');
});
