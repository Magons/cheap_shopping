@ProductsListResource = ($resource) ->
  $resource('/products_lists/:products_list_id.json',
    { products_list_id: '@id' }, { create: { method: 'POST' } }
  )

@ProductsListResource.$inject = [ '$resource' ]
