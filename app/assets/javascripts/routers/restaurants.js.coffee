App.Routers.Restaurants = Support.SwappingRouter.extend(
  initialize: (options) ->
    this.el = $('#restaurants')
    this.collection = options.collection

  routes:
    "":                "index" # root forward to index action
    "restaurants/:id": "show"

  # actions
  index: ->
    view = new App.Views.RestaurantsIndex({ collection: this.collection })
    this.swap(view)

  show: (restaurantId) ->
    task = this.collection.get(restaurantId)
    restaurantsRouter = this
    restaurant.fetch(
      success: ->
        view = new App.Views.RestaurantShow({ model: restaurant })
        restaurantsRouter.swap(view)
    )
)