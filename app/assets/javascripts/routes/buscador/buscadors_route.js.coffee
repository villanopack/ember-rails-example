App.BuscadorRoute = Em.Route.extend

  model: ->
    App.Film.find()

  setupController: (controller, model) ->
    @controllerFor('application').set('ruta_controller' , 'buscador')
    controller.set('films' , model)