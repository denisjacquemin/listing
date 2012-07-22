App.Routers.Restaurants =
  initialize: (options) ->
    this.el = $('#restaurants');
    this.collection = options.collection

  routes:
    "": "index" # root forward to index action
  
  # actions
  index: ->
    view = new App.Views.RestaurantsIndex({ collection: this.collection })
    this.swap(view)