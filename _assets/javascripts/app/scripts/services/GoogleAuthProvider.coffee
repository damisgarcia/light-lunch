$GoogleAuthProvider = (FirebaseFactory)->
  ###
  # @private
  ###
  FirebaseFactory.connect()
  ###
  # @public
  ###
  new firebase.auth.GoogleAuthProvider()
#


$GoogleAuthProvider.$inject = ['FirebaseFactory']

angular.module('lightLuchApp').factory '$GoogleAuthProvider', $GoogleAuthProvider
