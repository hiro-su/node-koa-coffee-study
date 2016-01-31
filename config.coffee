'use strict'

configDir = "#{__dirname}/config"

module.exports.routes   = require "#{configDir}/routes"
module.exports.settings = require "#{configDir}/settings"
