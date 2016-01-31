'use strict'

views = require 'co-views'

module.exports = (->
  viewsDir = "#{__dirname}/../views"
  views viewsDir, ext: 'jade'
)()
