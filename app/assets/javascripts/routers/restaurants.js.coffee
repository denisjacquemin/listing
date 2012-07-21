App.Routers.Restaurants =
  initialize = ->
	
  routes:
    "": "index" # root forward to index action
  
  # actions
  index: ->
    view = new App.Views.RestaurantsIndex({ collection: this.collection })
    this.swap(view)