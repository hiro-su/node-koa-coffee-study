'use strict'

###
# Module dependencies.
###
koa       = require 'koa'
morgan    = require 'koa-morgan'
session   = require 'koa-session'
serve     = require 'koa-static'
Memcached = require 'memcached'
fs        = require 'fs'
path      = require 'path'
{settings, routes} = require path.join __dirname, 'config'

###
# Prepare
###
app       = koa()
logger    = morgan.middleware
memcached = new Memcached settings.memcached

###
# logger
###
accessLogStream =
  if settings.env == "development"
    process.stdout
  else
    fs.createWriteStream "#{__dirname}/log/access.log", flags: 'a'

app.use logger 'dev' , stream: accessLogStream

###
# session
###
app.use session app

###
# error handler
###
app.use (next) ->
  try
    yield next
  catch err
    @status = 500
    @body = err.message
    app.emit "error", err

###
# error emittor
###
app.on 'error', (err) ->
  console.error err.stack

###
# router
###
routes app

###
# serve static file
###
app.use serve path.join __dirname, 'public'

unless module.parent
  server  = app.listen settings.port
  address = server.address()
  console.log "listening on %j", address
