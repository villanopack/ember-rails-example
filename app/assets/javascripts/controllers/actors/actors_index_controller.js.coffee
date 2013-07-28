App.ActorsIndexController = Em.ArrayController.extend

  init: ->
    console.log "entra en actors-index"

  numActores:(->
    @get('length')
  ).property('length')