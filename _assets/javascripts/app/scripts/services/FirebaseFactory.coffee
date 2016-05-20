FirebaseFactory = ->
  ###
  # @private
  ###

  config =
    apiKey:'AIzaSyC_EBV3t7Xvqrt4_vZxwxhLmzgwJlHizMY'
    authDomain:'intergralfit.firebaseapp.com'
    databaseURL:'https://intergralfit.firebaseio.com'
    storageBucket:'intergralfit.appspot.com'

  ###
  # @public
  ###
  connection: null
  connect: ->
    this.connection = firebase.initializeApp(config) unless this.connection

angular.module('lightLuchApp').factory 'FirebaseFactory', FirebaseFactory
