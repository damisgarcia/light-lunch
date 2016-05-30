###
# @controller AppCtrl
###

AppCtrl = (Order, $firebaseObject, Connection, $GoogleAuthProvider, $timeout)->
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

  Connection.onAuthStateChanged (user)->
    if user?
      console.log user
      $firebaseObject.extend(self, user: user)
    else
      $firebaseObject.extend(self, user: null)
  #...

  window.onload = ->
    $timeout application_timeout, 200

  self


AppCtrl.$inject = ['Order', '$firebaseObject', 'Connection','$GoogleAuthProvider', '$timeout']
angular.module('lightLuchApp').controller 'AppCtrl', AppCtrl
