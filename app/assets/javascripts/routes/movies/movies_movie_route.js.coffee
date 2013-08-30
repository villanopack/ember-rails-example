App.MoviesMovieRoute = Em.Route.extend

  init: ->
    console.log "entrando en route movie show"

  model: (params) ->
    App.Movie.find(params.movie)