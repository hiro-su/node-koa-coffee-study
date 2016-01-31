'use strict'

config = {
  debug:      process.env.NODE_ENV != 'production'
  port:       process.env.PORT || 5000
  memcached: 'localhost:11211'
}

module.exports = config
