App.ActorsNewController = Em.ObjectController.extend

  init: ->
    console.log 'entra en actors-new'

  save: (model)->
    console.log 'guardando....'
    model.one 'didCreate', @ , ->
      console.log 'guardado!!'
      @transitionToRoute 'actors'
    @get('model').get('transaction').commit()


  cancel: ->
    #cojo la transaction asociada a ese modelo y despues le hago un rollback para deshacer todos los cambios, que debe ser el modelo que hemos añadido en la route
    transaction = @get('model').get('transaction')
    transaction.rollback()
    @transitionToRoute 'actors'

