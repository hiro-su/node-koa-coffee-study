glob  = require 'glob'
path  = require 'path'
fs    = require 'fs'
spawn = require 'child_process'

task 'build_target', 'build target', ->
  console.log target() + ''
  console.log target('-exec cat {} +') + ''

task 'build', 'build', ->
  result = spawn.execSync "coffee --compile --stdio", input: target('-exec cat {} +')
  fs.writeFileSync path.join(__dirname, 'public', 'assets', 'app.js'), result

target = (exec='') ->
  spawn.execSync "find app/assets/javascripts/controllers -name '*.coffee' #{exec}" 
