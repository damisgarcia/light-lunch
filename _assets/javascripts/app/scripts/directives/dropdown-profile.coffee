dropdownProfile = (Connection)->
  restrict: 'E'
  scope:
    model: '='
  templateUrl: '/templates/dropdown-profile.html'
  link: (scope, element, attrs)->
    scope.logout = (e)->
      e.preventDefault()
      Connection.logout()

dropdownProfile.$inject = ['Connection']
angular.module('lightLuchApp').directive 'dropdownProfile', dropdownProfile
