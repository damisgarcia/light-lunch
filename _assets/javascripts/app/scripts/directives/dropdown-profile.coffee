dropdownProfile = (Connection, $uibModal)->
  restrict: 'E'
  scope:
    model: '='
  templateUrl: '/templates/dropdown-profile.html'
  link: (scope, element, attrs)->
    scope.logout = (e)->
      e.preventDefault()
      Connection.logout()
    scope.openForm = ->
      $uibModal.open
        animation: true
        templateUrl: 'myModalContent.html'
        controller: 'SessionCtrl as session'

dropdownProfile.$inject = ['Connection', '$uibModal']
angular.module('lightLuchApp').directive 'dropdownProfile', dropdownProfile
