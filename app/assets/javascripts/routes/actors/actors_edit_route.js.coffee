App.ActorsEditRoute = Em.Route.extend

  init: ->
    console.log 'entra en actors-edit-route'

  #Esto es redundante, se puede quitar pero es para probar la propiedad params
  #Route llama a model con los parametros que definimos en router
  #en este caso, actor_id es un parametros que he definido anter
  model: (params) ->
    App.Actor.find(params.actor_id)