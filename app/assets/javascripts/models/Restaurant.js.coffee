App.Models.Restaurant = Backbone.Model.extend
  urlRoot: '/restaurants'

  toJSON: ->
    json = _.clone(this.attributes)
    return json