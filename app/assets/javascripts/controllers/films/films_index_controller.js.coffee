App.FilmsIndexController = Ember.ArrayController.extend

  init: ->
    console.log "entra en films-index"


  numPeliculas:(->
      @get('length')
  ).property('length')