'usr strict'

route = require 'koa-route'

rootDir = "#{__dirname}/.."
Home = require "#{rootDir}/app/controllers/homeCtrl"
task = require "#{rootDir}/app/controllers/taskCtrl"

module.exports = (app) ->
  home = new Home(app)

  app.use route.get '/home', home.index
  app.use route.get '/tasks', task.list
