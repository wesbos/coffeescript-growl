sys = require('sys')
exec = require('child_process').exec
CoffeeScript = require "coffee-script"

App = {}

App.puts = (error, stdout, stderr) ->
	sys.puts(stdout)

App.icon = "#{__dirname}/i/coffee.png"

App.notify = (message, type) ->
	exec "growlnotify  -m '#{message}'	--image '#{__dirname}/i/coffee-#{type}.png'",App.puts 
	console.log "#{message}"
	

CoffeeScript.on 'failure', (error, task) ->
  App.notify "#{error}","error" 
  
CoffeeScript.on 'success', (task) ->
  App.notify "#{task.file} sucessfully compiled!","success"