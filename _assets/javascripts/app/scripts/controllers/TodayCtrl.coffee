###
# @controller AppCtrl
###

TodayCtrl = ->
  ###
  # @private
  ###

  ###
  # @public
  ###
  self = this

  self.lunches = [
    {
      title: "Almoço Lorem Ipsum",
      price: 20.00,
      picture: "https://c3.staticflickr.com/6/5596/14892571746_b0d59297d6_n.jpg"
      options:[
        "Arroz", "Feijão", "Azeitonas", "Queijo", "Manjericão"
      ]
    }
  ]

  self


TodayCtrl.$inject = []
angular.module('lightLuchApp').controller 'TodayCtrl', TodayCtrl
