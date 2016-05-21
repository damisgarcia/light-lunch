$FacebookAuthProvider = (FirebaseFactory)->
  ###
  # @private
  ###
  FirebaseFactory.connect()
  ###
  # @public
  ###
  new firebase.auth.FacebookAuthProvider()
#


$FacebookAuthProvider.$inject = ['FirebaseFactory']

angular.module('lightLuchApp').factory '$FacebookAuthProvider', $FacebookAuthProvider
