###
#
# @author Damis Garcia
# @doc Projeto teste para entendimento do funcionamento da plataforma firebase da Google
###

Routes = ($stateProvider, $urlRouterProvider)->
  $urlRouterProvider.otherwise("/new/order")

  $stateProvider
    .state "order-new",
      url: "/new/order"
      templateUrl: "step/cart.html"
      controller: "ToDaysMenuCtrl as today"

    .state "order-address",
      url: "/new/order/address"
      templateUrl: "step/address.html"

    .state "order-payment",
      url: "/new/order/payment"
      templateUrl: "step/payment.html"

    .state "order-submit",
      url: "/new/order/submit"
      templateUrl: "step/submit.html"

Routes.$inject = ['$stateProvider','$urlRouterProvider']

app = angular.module "lightLuchApp"
  .config Routes
