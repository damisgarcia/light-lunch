###
# @controller AppCtrl
###

AppCtrl = (FirebaseFactory, $GoogleAuthProvider)->
  self = this

  self.auth = ->
    authSuccess = (data)->
      self.user = data.user
    #
    authFail = (error)->
      console.debug error
    #

    FirebaseFactory.connection.auth().onAuthStateChanged (user)->
      console.log user
      if user?
        console.log "Rá", user
        self.user = user
      else
        FirebaseFactory.connection.auth().signInWithPopup($GoogleAuthProvider).then(authSuccess, authFail)
    #
  #

  # Connect User
  self.auth()

  self


AppCtrl.$inject = ['FirebaseFactory','$GoogleAuthProvider']
angular.module('lightLuchApp').controller 'AppCtrl', AppCtrl
