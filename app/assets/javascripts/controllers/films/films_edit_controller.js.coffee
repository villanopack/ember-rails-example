App.FilmsEditController = Em.ObjectController.extend
  needs: ['FilmsFilm']

  init: ->
    console.log "entra en edit controller"


  save: (film)->
    film = @get("content")
    transaction = @get("store").transaction()
    transaction.add film
    transaction.commit()
    console.log "actualizar modelo y redirect"
    @transitionTo "films.film" , film

  cancel: ->
    @transitionTo "films.film", @get("content")