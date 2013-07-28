App.ActorsEditController = Em.ObjectController.extend

  cancel: ->
    @transitionToRoute("actors.actor", @get('content'))

  save: ->
    actor = @get('content')
    transaction = @get('store').transaction()
    transaction.add actor
    transaction.commit()
    @transitionToRoute("actors.actor", @get('content'))







