glob  = require 'glob'
path  = require 'path'
fs    = require 'fs'
spawn = require 'child_process'

task 'build_target', 'show build target', ->
  console.log target() + ''
  console.log target('-exec cat {} +') + ''

task 'prebuild', 'prebuild', ->
  fs.writeFileSync path.join(__dirname, 'tmp', 'assets', 'build.coffee'), target('-exec cat {} +')
  spawn.execSync "$(npm bin)/webpack"
  #spawn.execSync "$(npm bin)/uglifyjs -c -o public/assets/app.min.js --source-map public/assets/app.js.map public/assets/app.js"
  spawn.execSync "coffee app.coffee"

task 'build', 'build', ->
  result = spawn.execSync "coffee --compile --stdio", input: target('-exec cat {} +')
  fs.writeFileSync path.join(__dirname, 'tmp', 'assets', 'build.js'), result

target = (exec='') ->
  spawn.execSync "find app/assets/javascripts/controllers -name '*.coffee' #{exec}" 
