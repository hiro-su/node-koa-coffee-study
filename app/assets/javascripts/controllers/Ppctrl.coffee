class AppCtrl
  constructor: ->
    alert 'hogehoge'

  todos: ->
    [1,2,3]

angular.module('todoApp').controller('MogeController', AppCtrl)
