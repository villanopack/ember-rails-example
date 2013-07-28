App.ActorsIndexRoute = Em.Route.extend

  model: ->
    App.Actor.find()