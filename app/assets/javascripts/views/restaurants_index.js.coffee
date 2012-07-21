App.Views.RestaurantsIndex = Support.CompositeView.extend
  
  initialize: ->

  render: ->
    this.renderTemplate()
    this.renderRestaurants()
    return this

  renderTemplate: ->
    this.$el.html(JST['restaurants/index']({ restaurants: this.collection }))

  renderRestaurants: ->
    self = this
    this.collection.each (restaurant) ->
      row = new App.Views.RestaurantItem({ model: restaurant })
      self.renderChild(row)
      self.$('tbody').append(row.el)
