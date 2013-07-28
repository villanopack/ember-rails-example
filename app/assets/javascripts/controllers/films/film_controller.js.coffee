App.FilmsFilmController = Em.ObjectController.extend

  init: ->
    console.log "entra en films-film"

  destroy: ->
    if window.confirm("Are you sure you want to delete this contact?")
      @get('content').deleteRecord()
      @get('store').commit()
      @transitionToRoute( "films.index" )

  #PROPERTYS
  ##########

  hayActores: ( ->
    @get('actors.length') > 0
  ).property('actors.length')

