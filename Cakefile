glob = require 'glob'
path = require 'path'

task 'build_target', 'build target', ->
  console.log glob.sync(path.join(__dirname, "app/assets/javascripts/controllers/**/*.coffee")).join(" ")
