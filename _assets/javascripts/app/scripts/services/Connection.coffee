Connection = (FirebaseFactory)->
  ###
  # @private
  ###

  ###
  # @public
  ###
  logout: (success, error)->
    FirebaseFactory.connection.auth().signOut().then(success, error)
  onAuthStateChanged: (callback)->
    FirebaseFactory.connection.auth().onAuthStateChanged callback
  signInWithPopup: (provider, success, error)->
    FirebaseFactory.connection.auth().signInWithPopup(provider)
      .then(success, error)

Connection.$inject = ['FirebaseFactory']

angular.module('lightLuchApp').factory 'Connection', Connection
