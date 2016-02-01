'use strict'

render = require "#{__dirname}/../utils/render"

class HomeCtrl
  constructor: (app) ->
    @app = app

  index: (next) ->
    #@body = yield render "layouts/application", { body: yield render "home/index" }
    @body = yield render "home/index"

module.exports = HomeCtrl
