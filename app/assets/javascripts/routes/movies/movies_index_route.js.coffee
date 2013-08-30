App.MoviesIndexRoute = Em.Route.extend

  init: ->
    console.log "entra en movies-index"

  model: ->
    App.Movie.find()

  setupController: (controller, model) ->
    controller.set('content', model)
    @controllerFor('application').set('ruta_controller', 'films');

