App.FilmsNewRoute = Em.Route.extend

  model: ->
    transaction = @get('store').transaction()
    transaction.createRecord(App.Film, {})
