<h2>Growl Notifications for the Node.js CoffeeScript complier!</h2>

<img src="http://f.cl.ly/items/2t1H2r0i0u3x0k2Z1E2v/Screen%20shot%202011-07-19%20at%201.34.40%20AM.png" alt="" />

<p>Super simple growl notifications for use with the Node.js Coffeecript Compiler</p>

<strong>To install:</strong>
<p><strong>First</strong> you must install <a href="http://growl.info/extras.php#growlnotify">growlnotify</a> which is a command line tool for sending growl messages.</p>

<p><strong>Second</strong> use NPM to install:</p>
<code>npm install coffeescript-growl</code>

<p><strong>Finally</strong> pop in `cofeescript-growl` as a required when compliling. Works great with --watch and --compile</p>
<p>Example:</p>

<code>coffee -r coffeescript-growl  --watch --compile ~/sites/my_project/scripts.coffee</code>