FirebaseFactory = ->
  ###
  # @private
  ###

  config =
    apiKey:'AIzaSyCONqfNXX-RGfLfapei-K2Yi8aK-KJrGDE'
    authDomain:'project-6757960052769325295.firebaseapp.com'
    databaseURL:'https://project-6757960052769325295.firebaseio.com'
    storageBucket:'project-6757960052769325295.appspot.com'

  ###
  # @public
  ###
  connection: null
  connect: ->
    this.connection = firebase.initializeApp(config) unless this.connection

angular.module('lightLuchApp').factory 'FirebaseFactory', FirebaseFactory
