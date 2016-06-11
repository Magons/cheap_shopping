@ProductsListsController = (ProductsList, Product, $http, $scope, Flash) ->
  that = this

  this.init = ->
    that.products.update()
    $scope.products_list = { name: null }

  this.confirmed = ->
    confirm('Are you sure?')

  this.added_products = {
    items: []
  }

  this.products = {
    items: []

    update: ->
      Product.query(
        (items) ->
          that.products.items = items
      )
  }

  this.products_lists = {
    items: []

    create: =>
      products_attributes = {}
      angular.forEach(this.added_products.items, (product, i) =>
        products_attributes = angular.extend(products_attributes, { "#{i + 1}": { product_id: product.id } })
      )
      ProductsList['create']({
        products_list: { name: $scope.products_list.name, productization_attributes: products_attributes }
        }, (items) =>
        @item = {}
        @items = items
      )
      this.successAlert()

    update: ->
      ProductsList.query(
        (items) ->
          that.products_lists.items = items
      )

    remove: (id) ->
      for products_list, index in this.items
        if products_list.id == id
          products_list.$remove(
            (items) ->
            that.products_lists.update()
          ) if that.confirmed()
          break
    }

  this.add_product = (product) ->
    this.added_products.items.push(product)
    $scope.product_name = ''

  this.remove_product = (index) ->
    this.added_products.items.splice(index, 1)

  this.successAlert = =>
    message = 'Products list was successfully created.'
    id = Flash.create('success', message, 0, { class: 'alert alert-success' }, true)

  this

@ProductsListsController.$inject = ['ProductsList', 'Product', '$http', '$scope', 'Flash']
