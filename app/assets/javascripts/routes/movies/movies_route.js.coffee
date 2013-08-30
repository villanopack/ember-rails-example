App.MoviesRoute = Em.Route.extend

  setupController: (controller, model) ->
    @controllerFor('application').set('ruta_controller', 'films')
