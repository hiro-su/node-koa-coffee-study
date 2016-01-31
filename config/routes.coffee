'usr strict'

route = require 'koa-route'

rootDir = "#{__dirname}/.."
Home = require "#{rootDir}/controllers/homeCtrl"
task = require "#{rootDir}/controllers/taskCtrl"

module.exports = (app) ->
  home = new Home(app)

  app.use route.get '/home', home.index
  app.use route.get '/tasks', task.list
