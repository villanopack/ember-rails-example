App.ActorsNewRoute = Em.Route.extend

  model: ->
    transaction = @get('store').transaction()
    transaction.createRecord(App.Actor)