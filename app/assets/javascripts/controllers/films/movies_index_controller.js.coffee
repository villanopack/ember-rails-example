App.MoviesIndexController = Ember.ArrayController.extend

  init: ->
    console.log "entra en movies-index"

  borrar: (modelo) ->
    transaction = @get("store").transaction()
    modelo.deleteRecord()
    transaction.commit()


  numPeliculas:(->
      @get('length')
  ).property('length')