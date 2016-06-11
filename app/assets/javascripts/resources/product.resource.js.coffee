@ProductResource = ($resource) ->
  $resource('/products/:product_id.json', { product_id: '@id' })

@ProductResource.$inject = [ '$resource' ]
