ToDaysMenuCtrl = ($rootScope, $filter, Order)->
  self = this

  self.plates = [
    { id: 1,picture: "https://c2.staticflickr.com/4/3053/5839713601_4abe379451_n.jpg", title: "Prato 1", info: "Lorem Ipsum asdum", price: 20.0 }
    { id: 2,picture: "https://c2.staticflickr.com/4/3053/5839713601_4abe379451_n.jpg", title: "Prato 2", info: "Lorem Ipsum asdum", price: 20.0 }
    { id: 3,picture: "https://c2.staticflickr.com/4/3053/5839713601_4abe379451_n.jpg", title: "Prato 3", info: "Lorem Ipsum asdum", price: 10.5 }
    { id: 4,picture: "https://c2.staticflickr.com/4/3053/5839713601_4abe379451_n.jpg", title: "Prato 4", info: "Lorem Ipsum asdum", price: 10.5 }
  ]

  self.sauces = [
    { id: 5,title: "Gorgonzola", price: 0 }
    { id: 6,title: "Cury", price: 0 }
    { id: 7,title: "Picante", price: 0 }
  ]

  self.juices = [
    { id: 8,title: "Abacaxi", price: 5}
    { id: 9,title: "Uva", price: 5 }
    { id: 10,title: "Orange", price: 5 }
    { id: 11,title: "Apple", price: 5 }
  ]

  self.add = (product)->
    result = $filter('filter') $rootScope.$order.cart, { id: product.id }, true

    if result.length <= 0
      product = angular.copy(product)
      $rootScope.$order.cart.push angular.extend(product, count: 1)
      Order.$update()

  self

ToDaysMenuCtrl.$inject = ['$rootScope', '$filter', 'Order']

angular.module('lightLuchApp').controller 'ToDaysMenuCtrl', ToDaysMenuCtrl
