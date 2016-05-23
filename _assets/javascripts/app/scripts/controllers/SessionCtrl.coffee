###
# @controller AppCtrl
###

SessionCtrl = (Connection, $GoogleAuthProvider, $FacebookAuthProvider, $uibModalInstance, $firebaseObject)->
  ###
  # @private
  ###

  authSuccess = (data)->
    $uibModalInstance.dismiss("cancel")

  authFail = (error)->
    $firebaseObject.extend(self, error_message: error.message)
  #

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


SessionCtrl.$inject = ['Connection', '$GoogleAuthProvider', '$FacebookAuthProvider', '$uibModalInstance', '$firebaseObject']
angular.module('lightLuchApp').controller 'SessionCtrl', SessionCtrl
