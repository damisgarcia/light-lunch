$firebaseObject = ($rootScope)->
  extend: (parent, object)->
    angular.extend(parent, object)
    $rootScope.$apply()

$firebaseObject.$inject = ['$rootScope']

angular.module('lightLuchApp').factory '$firebaseObject', $firebaseObject
