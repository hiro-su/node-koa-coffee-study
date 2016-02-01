'use strict'

views = require 'co-views'

module.exports = (template) ->
  viewsDir = "#{__dirname}/../views"
  render = views viewsDir, ext: 'jade'
  render "layouts/application", { body: yield render template }
