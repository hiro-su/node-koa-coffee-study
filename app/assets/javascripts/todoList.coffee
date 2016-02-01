class TodoList
  constructor: ->
    alert 'hogehoge'

  todos: ->
    [1,2,3]

angular.module('todoApp').controller('TodoListController', TodoList) 
