App.IndexRoute = Ember.Route.extend

    init: ->
      console.log "entra en index route"

    redirect: ->
      @transitionTo('movies.index')


