path  = require 'path'
fs    = require 'fs'
spawn = require 'child_process'

log = console.log

option '-v', '--verbose', 'verbose'

task 'build:target', 'show build target', (options) ->
  log target() + ''
  log target('-exec cat {} +') + '' if options.verbose?

task 'build', 'build', ->
  fs.writeFileSync path.join(__dirname, 'tmp', 'assets', 'build.coffee'), target('-exec cat {} +')

target = (exec='') ->
  spawn.execSync "find app/assets/javascripts/controllers -name '*.coffee' #{exec}" 

assets = (file, type="public") ->
  assetsDir = path.join __dirname, type, 'assets'
  path.join assetsDir, file

