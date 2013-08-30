App.MoviesFreeRoute = Em.Route.extend

  init: ->
    console.log "entra en movies-free"

  model: ->
    App.Movie.find()

  setupController: (controller, model) ->
    controller.set('content', model)
    @controllerFor('application').set('ruta_controller', 'filmsFree')

