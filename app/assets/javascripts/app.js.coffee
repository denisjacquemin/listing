window.App = 
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: (data) ->
    this.restaurants = new App.Collections.Restaurants(data.restaurants)

    new App.Routers.Restaurants({ collection: this.restaurants })
    if !Backbone.history.started
      Backbone.history.start()
      Backbone.history.started = true