'use strict'

_ = require 'lodash'

configDir = "#{__dirname}/config"
defaults = require "#{configDir}/settings"
settings = _.merge defaults, require "#{configDir}/settings/#{defaults.env}"

module.exports.settings = settings
module.exports.routes   = require "#{configDir}/routes"
