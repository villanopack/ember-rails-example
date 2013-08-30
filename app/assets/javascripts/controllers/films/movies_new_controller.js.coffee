App.FilmsNewController = Em.ObjectController.extend

  cancel: ->
    transaction = @get('model').get('transaction')
    transaction.rollback()
    @transitionToRoute("films.index")

  save: (model)->
    console.log 'guardando....'
    model.one 'didCreate', @ , ->
      console.log 'guardado!!'
      @transitionToRoute 'films'
    @get('model').get('transaction').commit()
