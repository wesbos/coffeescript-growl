exec = require('child_process').exec
coffee = require 'coffee-script'

callback = (error, stdout, stderr) ->
    console.log "stdout: #{stdout}" if !!stdout
    console.log "stderr: #{stderr}" if !!stderr
    console.log "exec error: #{error}" if error?

notify = (message, type) ->
    exec "growlnotify -m '#{message}' --image '#{__dirname}/i/coffee-#{type}.png'", callback

coffee.on 'failure', (error, task) ->
    notify error, 'error'

coffee.on 'success', (task) ->
    notify "#{task.file} successfully compiled", 'success'
