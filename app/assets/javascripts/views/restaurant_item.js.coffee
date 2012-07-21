App.Views.RestaurantItem = Support.CompositeView.extend
  
  tagName: "tr"
  
  render: ->
    this.$el.attr("id", "restaurant_" + this.model.id)
    this.$el.html(JST['restaurants/item']({ restaurant: this.model }))
    this.$('.name').text(this.model.get('name'))
    this.$('.description').text(this.model.get('description'))
    return this

