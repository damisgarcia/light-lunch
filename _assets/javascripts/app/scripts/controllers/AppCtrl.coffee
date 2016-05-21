###
# @controller AppCtrl
###

AppCtrl = ($firebaseObject, Connection, $GoogleAuthProvider, $timeout)->
  ###
  # @private
  ###
  authSuccess = (data)->
    self.user = data.user
  #

  authFail = (error)->
    console.debug error
  #

  application_timeout = ->
    self.loaded = true

  ###
  # @public
  ###
  self = this

  self.singin =
    google: (e)->
      e.preventDefault()
      Connection.signInWithPopup $GoogleAuthProvider, authSuccess, authFail
  #

  Connection.onAuthStateChanged (user)->
    if user?
      $firebaseObject.extend(self, user: user)
    else
      $firebaseObject.extend(self, user: null)

  #...
  window.onload = ->
    $timeout application_timeout, 600

  self


AppCtrl.$inject = ['$firebaseObject', 'Connection','$GoogleAuthProvider', '$timeout']
angular.module('lightLuchApp').controller 'AppCtrl', AppCtrl
