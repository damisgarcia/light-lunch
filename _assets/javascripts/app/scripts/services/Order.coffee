Order = ($rootScope)->
  ###
  # @public
  ###
  self = {}

  self.$update = ->
    localStorage.$order = JSON.stringify($rootScope.$order)
  ###
  # @private
  ###
  create = ->
    $rootScope.$order = cart: []
    localStorage.$order = JSON.stringify($rootScope.$order)
  #

  ###
  # @initialize
  ###

  $rootScope.$order = JSON.parse(localStorage.$order) if localStorage.$order?

  unless $rootScope.$order?
    create()

  self


Order.$inject = ['$rootScope']

angular.module('lightLuchApp').factory 'Order', Order
