'use strict'

module.exports.list = (next) ->
  @body = "task list"
  yield next
