App.FilmsIndexController = Ember.ArrayController.extend

  init: ->
    console.log "entra en films-index"

  borrar: (modelo) ->
    transaction = @get("store").transaction()
    modelo.deleteRecord()
    transaction.commit()


  numPeliculas:(->
      @get('length')
  ).property('length')