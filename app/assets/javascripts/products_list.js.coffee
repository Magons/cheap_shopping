#= require resources/products_list.resource
#= require resources/product.resource
#= require products_lists/products_lists.controller
#= require products_lists/text_complete.directive

products_lists = angular
  .module('products_lists', ['ngResource', 'ngTextcomplete', 'xeditable', 'ngFlash'])
  .config(['$httpProvider', ($httpProvider) ->
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
  ])
  .config((FlashProvider) ->
    FlashProvider.setTemplatePreset('transclude')
  )
  .run (editableOptions) ->
    editableOptions.theme = 'bs3'

products_lists.factory('ProductsList', ProductsListResource)
products_lists.factory('Product', ProductResource)
products_lists.controller('ProductsListsController', ProductsListsController)
products_lists.directive('textcomplete', textComplete)
