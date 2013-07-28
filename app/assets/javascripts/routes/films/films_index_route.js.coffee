App.FilmsIndexRoute = Em.Route.extend

  model: ->
    App.Film.find()

  setupController: (controller, model) ->
    controller.set('content', model)

