###
# @controller AppCtrl
###

SessionCtrl = (Connection, $GoogleAuthProvider, $FacebookAuthProvider, $uibModalInstance)->
  ###
  # @private
  ###
  
  authSuccess = (data)-> $uibModalInstance.dismiss("cancel")
  authFail = (error)-> console.debug error

  ###
  # @public
  ###
  self = this

  self.singin =
    google: (e)->
      e.preventDefault()
      Connection.signInWithPopup $GoogleAuthProvider, authSuccess, authFail
    facebook: (e)->
      e.preventDefault()
      Connection.signInWithPopup $FacebookAuthProvider, authSuccess, authFail
  #

  self


SessionCtrl.$inject = ['Connection', '$GoogleAuthProvider', '$FacebookAuthProvider', '$uibModalInstance']
angular.module('lightLuchApp').controller 'SessionCtrl', SessionCtrl
